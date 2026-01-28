@echo off
cd /d C:\Users\syassinho\Arbeit
echo =========================================
echo Push changes to git and git annex
echo =========================================

echo add the big data to annex
git annex add --largerthan=100MB 

echo add all other changes to git
git add .


echo.
set /p commitmsg="Enter commit message: "
echo.
git commit -m %commitmsg%
echo push to git and git annex
echo.
echo git push origin main und git annex sync
git push origin main
git annex sync --content


pause