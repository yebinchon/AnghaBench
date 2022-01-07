
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtw_dpk_info {int is_dpk_pwr_on; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {int rfk_init_tbl; } ;


 int BIT (int) ;
 int rtw_load_table (struct rtw_dev*,int ) ;
 int rtw_write32_mask (struct rtw_dev*,int,int ,int) ;

__attribute__((used)) static void rtw_load_rfk_table(struct rtw_dev *rtwdev)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;

 if (!chip->rfk_init_tbl)
  return;

 rtw_write32_mask(rtwdev, 0x1e24, BIT(17), 0x1);
 rtw_write32_mask(rtwdev, 0x1cd0, BIT(28), 0x1);
 rtw_write32_mask(rtwdev, 0x1cd0, BIT(29), 0x1);
 rtw_write32_mask(rtwdev, 0x1cd0, BIT(30), 0x1);
 rtw_write32_mask(rtwdev, 0x1cd0, BIT(31), 0x0);

 rtw_load_table(rtwdev, chip->rfk_init_tbl);

 dpk_info->is_dpk_pwr_on = 1;
}
