
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct rtw_table {int dummy; } ;
struct TYPE_2__ {size_t rf_path_num; } ;
struct rtw_dev {TYPE_1__ hal; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {struct rtw_table** rf_tbl; struct rtw_table const* agc_tbl; struct rtw_table const* bb_tbl; struct rtw_table const* mac_tbl; } ;


 int rtw_load_rfk_table (struct rtw_dev*) ;
 int rtw_load_table (struct rtw_dev*,struct rtw_table const*) ;

void rtw_phy_load_tables(struct rtw_dev *rtwdev)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 u8 rf_path;

 rtw_load_table(rtwdev, chip->mac_tbl);
 rtw_load_table(rtwdev, chip->bb_tbl);
 rtw_load_table(rtwdev, chip->agc_tbl);
 rtw_load_rfk_table(rtwdev);

 for (rf_path = 0; rf_path < rtwdev->hal.rf_path_num; rf_path++) {
  const struct rtw_table *tbl;

  tbl = chip->rf_tbl[rf_path];
  rtw_load_table(rtwdev, tbl);
 }
}
