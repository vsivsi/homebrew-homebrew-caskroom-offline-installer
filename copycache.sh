# @name copycache.sh
# @version v0.0.2
# @description this script copies files from the /Library/Caches/Homebrew to the external drive + /Library/Caches/Homebrew
# @usage run this script from an external drive under a sub directory such as hbcoffline

from_dir="/Library/Caches/Homebrew"
to_dir="${PWD}/Library/Caches/Homebrew"

if [ ! -d "$to_dir" ]; then
  mkdir "$to_dir"
fi
rsync -rvuh ${from_dir} $to_dir --progress --exclude=.DS_Store --stats --safe-links
