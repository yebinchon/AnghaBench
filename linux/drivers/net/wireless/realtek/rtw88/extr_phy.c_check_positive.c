
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_phy_cond {scalar_t__ cut; scalar_t__ pkg; scalar_t__ intf; scalar_t__ rfe; } ;
struct rtw_hal {struct rtw_phy_cond phy_cond; } ;
struct rtw_dev {struct rtw_hal hal; } ;



__attribute__((used)) static bool check_positive(struct rtw_dev *rtwdev, struct rtw_phy_cond cond)
{
 struct rtw_hal *hal = &rtwdev->hal;
 struct rtw_phy_cond drv_cond = hal->phy_cond;

 if (cond.cut && cond.cut != drv_cond.cut)
  return 0;

 if (cond.pkg && cond.pkg != drv_cond.pkg)
  return 0;

 if (cond.intf && cond.intf != drv_cond.intf)
  return 0;

 if (cond.rfe != drv_cond.rfe)
  return 0;

 return 1;
}
