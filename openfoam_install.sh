#!/bin/bash

File=~/.bashrc

sudo sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -"
sudo add-apt-repository http://dl.openfoam.org/ubuntu

sudo apt-get update

sudo apt-get -y install openfoam6


if grep -q "source /opt/openfoam6/etc/bashrc" "$File"; then
	echo "already added: source /opt/openfoam6/etc/bashrc."  
else
  	echo "source /opt/openfoam6/etc/bashrc" >> $File
	echo "added _source /opt/openfoam6/etc/bashrc_ to bashrc file. Done."
fi
