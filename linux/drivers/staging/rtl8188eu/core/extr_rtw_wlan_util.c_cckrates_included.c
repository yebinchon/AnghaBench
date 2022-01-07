
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



bool cckrates_included(unsigned char *rate, int ratelen)
{
 int i;

 for (i = 0; i < ratelen; i++) {
  u8 r = rate[i] & 0x7f;

  if (r == 2 || r == 4 || r == 11 || r == 22)
   return 1;
 }
 return 0;
}
