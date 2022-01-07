
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtw_dev {int dummy; } ;


 int BIT (int) ;
 scalar_t__ REG_BT_COEX_TABLE_H ;
 int rtw_write8_mask (struct rtw_dev*,scalar_t__,int ,int) ;

__attribute__((used)) static void rtw_coex_set_wl_pri_mask(struct rtw_dev *rtwdev, u8 bitmap,
         u8 data)
{
 u32 addr;

 addr = REG_BT_COEX_TABLE_H + (bitmap / 8);
 bitmap = bitmap % 8;

 rtw_write8_mask(rtwdev, addr, BIT(bitmap), data);
}
