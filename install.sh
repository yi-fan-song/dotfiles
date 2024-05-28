
# Install latex deps
sudo apt-get update
sudo apt-get install -y libyaml-tiny-perl libfile-homedir-perl

# Install Latex
cd /tmp # working directory of your choice
curl -L -o install-tl-unx.tar.gz https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat < install-tl-unx.tar.gz | tar xf -
cd install-tl-2*
sudo perl ./install-tl --no-interaction # as root or with writable destination
echo 'export PATH="/usr/local/texlive/2024/bin/x86_64-linux:$PATH"' >> ~/.bash_aliases
