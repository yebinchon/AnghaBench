
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct rtw_hal {size_t rf_path_num; } ;
struct rtw_dev {struct rtw_hal hal; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* dig; } ;
struct TYPE_2__ {int mask; int addr; } ;


 int rtw_write32_mask (struct rtw_dev*,int ,int ,size_t) ;

void rtw_phy_dig_write(struct rtw_dev *rtwdev, u8 igi)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_hal *hal = &rtwdev->hal;
 u32 addr, mask;
 u8 path;

 for (path = 0; path < hal->rf_path_num; path++) {
  addr = chip->dig[path].addr;
  mask = chip->dig[path].mask;
  rtw_write32_mask(rtwdev, addr, mask, igi);
 }
}
