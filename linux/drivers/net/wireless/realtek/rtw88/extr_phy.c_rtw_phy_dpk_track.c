
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtw_dev {struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dpk_track ) (struct rtw_dev*) ;} ;


 int stub1 (struct rtw_dev*) ;

__attribute__((used)) static void rtw_phy_dpk_track(struct rtw_dev *rtwdev)
{
 struct rtw_chip_info *chip = rtwdev->chip;

 if (chip->ops->dpk_track)
  chip->ops->dpk_track(rtwdev);
}
