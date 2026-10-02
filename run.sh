#!/bin/bash

cd "$(dirname "$0")"

# 1 
$MYGREP -f data/hugeRegex.pat data/sample.txt
# 2 
echo abc | $MYGREP -V -c -L zzz
# 3 
$MYGREP -X egrep -i -w -f data/egrepPatterns.pat data/sample.txt
# 4 
$MYGREP  -f data/mixBasic.pat data/mixBasic.txt
# 5 
$MYGREP -l -f data/listPatterns.pat data/sample.txt data/empty.txt data/noNewline.txt
# 6 
$MYGREP -f data/badRegex.pat data/sample.txt
# 7 
$MYGREP -v -n -b -f data/mixInvertLinenum.pat data/mixInvertLinenum.txt
# 8 
$MYGREP -n -f data/basicPatterns.pat data/sample.txt
# 9 
$MYGREP -E -i -x -f data/mixEgrepIcaseLine.pat data/mixEgrepIcaseLine.txt
# 10 
$MYGREP -h -s -f data/multiFilePatterns.pat data/missingFile.txt data/sample.txt - < data/noNewline.txt
# 11 
$MYGREP -F -w -n -h -A 1 -f data/mixFgrepWord.pat data/mixFgrepWord.txt
# 12 
$MYGREP -E -x -b -q -f data/mixEgrepLineByte.pat data/mixEgrepLineByte.txt
# 13 
cat data/sample.txt | $MYGREP -C -v -f data/invertPatterns.pat
# 14 
$MYGREP -F -c -e abab data/bigText.txt data/noNewline.txt data/binaryChars.txt
# 15 
$MYGREP -F -x -e vanilla -e abc -e 'strawberry cake' -e '' data/sample.txt
# 16
$MYGREP -q -f data/quietPatterns.pat data/missingFile.txt < data/sample.txt
# 17 
$MYGREP -E -w -q -f data/mixEgrepWord.pat data/mixEgrepWord.txt
# 18 
$MYGREP -L -f data/noMatchPatterns.pat data/sample.txt data/empty.txt data/noNewline.txt
# 19 
echo hello | $MYGREP -f data/stdinPatterns.pat -f - data/sample.txt
# 20 
$MYGREP -x -f data/mixWholeLine.pat data/mixWholeLine.txt
# 21 
$MYGREP -X egrep -l -f data/mixEgrepList.pat data/mixEgrepList.txt
# 22 
$MYGREP -A 1 -B 3 -b -f data/contextPatterns.pat data/sample.txt
# 23 
$MYGREP -X nosuch -n -f data/longKeyword.pat data/sample.txt data/noNewline.txt
# 24 
$MYGREP -G -G -E x data/sample.txt
# 25 
$MYGREP -F -i -w -L -f data/mixFgrepIcaseNomatch.pat data/mixFgrepIcaseNomatch.txt
# 26 
$MYGREP -E -L -f data/mixEgrepNomatch.pat data/mixEgrepNomatch.txt
# 27 
$MYGREP -w -v -c -A 1 -f data/mixWordInvertCount.pat data/mixWordInvertCount.txt
# 28 
$MYGREP -E -l -f data/mixEgrepFiles.pat data/mixEgrepFiles.txt
# 29 
$MYGREP -c -f data/dirReadPatterns.pat data data/bigText.txt
# 30
$MYGREP -2 -E -n -q -f data/mixEgrepContext.pat data/mixEgrepContext.txt
