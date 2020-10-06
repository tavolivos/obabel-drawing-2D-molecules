#!/bin/bash
#THIS SCRIPT WAS WRITEN BY GUSTAVO E. OLIVOS-RAMIREZ. gustavo.olivos@upch.pe

#list of smiles
smiles=(
	"C1=CC2=C3C(=C1)C(=O)OC4(C3=CC=C2)C5=C(C=C(C=C5)O)OC6=C4C=CC(=C6)O"
	"C1CCC(C(C1)CN2CCN(CC2)C3=NSC4=CC=CC=C43)CN5C(=O)C6C7CCC(C7)C6C5=O"
	"CC#CC(=O)N1CCCC1C2=NC(=C3N2C=CN=C3N)C4=CC=C(C=C4)C(=O)NC5=CC=CC=N5"
)
#loop for draw
for i in "${smiles[@]}"; do
	mkdir $i
	obabel -:"$i" -O "$i"/"$i".svg -xm -xd -xC -xb none -xt
	echo "$i -> Done"
done
echo "Finished"
