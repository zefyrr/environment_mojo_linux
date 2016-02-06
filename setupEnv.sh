#!/bin/bash
set -x #echo on

echo 'Setting up bash profile'

rm -rf ~/.bash_profile
ln -s `pwd`/.bash_profile ~/.bash_profile

echo 'Setting up tmux'

rm -rf ~/.tmux.conf
ln -s `pwd`/.tmux.conf ~/.tmux.conf

echo 'Setting up vim'

rm -rf ~/.vimrc
rm -rf ~/.vim
ln -s `pwd`/.vim ~/.vim
ln -s `pwd`/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


#echo 'Setting up homebrew'
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brew update
#brew install autoconf automake libtool
#brew link autoconf automake libtool

echo 'Setup complete'

