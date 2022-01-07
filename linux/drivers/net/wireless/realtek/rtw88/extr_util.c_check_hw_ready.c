
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int rtw_read32_mask (struct rtw_dev*,int,int) ;
 int udelay (int) ;

bool check_hw_ready(struct rtw_dev *rtwdev, u32 addr, u32 mask, u32 target)
{
 u32 cnt;

 for (cnt = 0; cnt < 1000; cnt++) {
  if (rtw_read32_mask(rtwdev, addr, mask) == target)
   return 1;

  udelay(10);
 }

 return 0;
}
