
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



bool rtw_is_cckratesonly_included(u8 *rate)
{
 while (*rate) {
  u8 r = *rate & 0x7f;

  if (r != 2 && r != 4 && r != 11 && r != 22)
   return 0;
  rate++;
 }

 return 1;
}
