
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;

unsigned char get_highest_rate_idx(u32 mask)
{
 int i;
 unsigned char rate_idx = 0;

 for (i = 27; i >= 0; i--) {
  if (mask & BIT(i)) {
   rate_idx = i;
   break;
  }
 }
 return rate_idx;
}
