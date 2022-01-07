
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bn ;
 int currbuf ;
 int currsentence ;
 int* numsentences ;
 scalar_t__* sentbufend ;
 scalar_t__** sentmarks ;
 int spkup_write (scalar_t__,scalar_t__) ;

__attribute__((used)) static int say_sentence_num(int num, int prev)
{
 bn = currbuf;
 currsentence = num + 1;
 if (prev && --bn == -1)
  bn = 1;

 if (num > numsentences[bn])
  return 0;

 spkup_write(sentmarks[bn][num], sentbufend[bn] - sentmarks[bn][num]);
 return 1;
}
