
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LP8788_WDAY_SET ;
 int MAX_WDAY_BITS ;

__attribute__((used)) static int _to_tm_wday(u8 lp8788_wday)
{
 int i;

 if (lp8788_wday == 0)
  return 0;


 for (i = 0; i < MAX_WDAY_BITS; i++) {
  if ((lp8788_wday >> i) == LP8788_WDAY_SET)
   break;
 }

 return i + 1;
}
