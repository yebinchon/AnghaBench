
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rtw_hal {scalar_t__ rf_path_num; int tx_power_mutex; } ;
struct rtw_dev {struct rtw_hal hal; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_tx_power_index ) (struct rtw_dev*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_phy_set_tx_power_level_by_path (struct rtw_dev*,scalar_t__,scalar_t__) ;
 int stub1 (struct rtw_dev*) ;

void rtw_phy_set_tx_power_level(struct rtw_dev *rtwdev, u8 channel)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_hal *hal = &rtwdev->hal;
 u8 path;

 mutex_lock(&hal->tx_power_mutex);

 for (path = 0; path < hal->rf_path_num; path++)
  rtw_phy_set_tx_power_level_by_path(rtwdev, channel, path);

 chip->ops->set_tx_power_index(rtwdev);
 mutex_unlock(&hal->tx_power_mutex);
}
