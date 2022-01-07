
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtw_dev {struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* mac_init ) (struct rtw_dev*) ;} ;


 int rtw_drv_info_cfg (struct rtw_dev*) ;
 int rtw_init_trx_cfg (struct rtw_dev*) ;
 int stub1 (struct rtw_dev*) ;

int rtw_mac_init(struct rtw_dev *rtwdev)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 int ret;

 ret = rtw_init_trx_cfg(rtwdev);
 if (ret)
  return ret;

 ret = chip->ops->mac_init(rtwdev);
 if (ret)
  return ret;

 ret = rtw_drv_info_cfg(rtwdev);
 if (ret)
  return ret;

 return 0;
}
