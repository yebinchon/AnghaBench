
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtw_dev {int dummy; } ;


 int RF_PATH_A ;
 int RF_PATH_B ;
 scalar_t__ rtw_read_rf (struct rtw_dev*,int ,int,int) ;
 int rtw_write32_mask (struct rtw_dev*,int,int,int) ;
 int rtw_write8 (struct rtw_dev*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void rtw8822c_dpk_tx_pause(struct rtw_dev *rtwdev)
{
 u8 reg_a, reg_b;
 u16 count = 0;

 rtw_write8(rtwdev, 0x522, 0xff);
 rtw_write32_mask(rtwdev, 0x1e70, 0xf, 0x2);

 do {
  reg_a = (u8)rtw_read_rf(rtwdev, RF_PATH_A, 0x00, 0xf0000);
  reg_b = (u8)rtw_read_rf(rtwdev, RF_PATH_B, 0x00, 0xf0000);
  udelay(2);
  count++;
 } while ((reg_a == 2 || reg_b == 2) && count < 2500);
}
