
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_hal {scalar_t__ antenna_rx; scalar_t__ antenna_tx; } ;
struct rtw_dev {struct rtw_hal hal; } ;


 scalar_t__ BB_PATH_AB ;
 int BIT (int) ;
 int MASKBYTE1 ;
 int MASKLWORD ;
 int REG_RFECTL ;
 int REG_RFEINV ;
 int REG_RFESEL0 ;
 int REG_RFESEL8 ;
 int REG_TRSW ;
 int rtw_write32s_mask (struct rtw_dev*,int ,int,int) ;

__attribute__((used)) static void rtw8822b_set_channel_rfe_efem(struct rtw_dev *rtwdev, u8 channel)
{
 struct rtw_hal *hal = &rtwdev->hal;
 bool is_channel_2g = (channel <= 14) ? 1 : 0;

 if (is_channel_2g) {
  rtw_write32s_mask(rtwdev, REG_RFESEL0, 0xffffff, 0x705770);
  rtw_write32s_mask(rtwdev, REG_RFESEL8, MASKBYTE1, 0x57);
  rtw_write32s_mask(rtwdev, REG_RFECTL, BIT(4), 0);
 } else {
  rtw_write32s_mask(rtwdev, REG_RFESEL0, 0xffffff, 0x177517);
  rtw_write32s_mask(rtwdev, REG_RFESEL8, MASKBYTE1, 0x75);
  rtw_write32s_mask(rtwdev, REG_RFECTL, BIT(5), 0);
 }

 rtw_write32s_mask(rtwdev, REG_RFEINV, BIT(11) | BIT(10) | 0x3f, 0x0);

 if (hal->antenna_rx == BB_PATH_AB ||
     hal->antenna_tx == BB_PATH_AB) {

  rtw_write32s_mask(rtwdev, REG_TRSW, MASKLWORD, 0xa501);
 } else if (hal->antenna_rx == hal->antenna_tx) {

  rtw_write32s_mask(rtwdev, REG_TRSW, MASKLWORD, 0xa500);
 } else {

  rtw_write32s_mask(rtwdev, REG_TRSW, MASKLWORD, 0xa005);
 }
}
