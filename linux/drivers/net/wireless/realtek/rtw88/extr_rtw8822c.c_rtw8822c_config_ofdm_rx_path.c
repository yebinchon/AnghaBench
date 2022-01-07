
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int BB_PATH_A ;
 int BB_PATH_AB ;
 int BB_PATH_B ;
 int BIT (int) ;
 int REG_AGCSWSH ;
 int REG_ANTWTPD ;
 int REG_MRCM ;
 int REG_RXFNCTL ;
 int rtw_write32_mask (struct rtw_dev*,int,int,int) ;

__attribute__((used)) static void rtw8822c_config_ofdm_rx_path(struct rtw_dev *rtwdev, u8 rx_path)
{
 if (rx_path == BB_PATH_A || rx_path == BB_PATH_B) {
  rtw_write32_mask(rtwdev, REG_RXFNCTL, 0x300, 0x0);
  rtw_write32_mask(rtwdev, REG_RXFNCTL, 0x600000, 0x0);
  rtw_write32_mask(rtwdev, REG_AGCSWSH, BIT(17), 0x0);
  rtw_write32_mask(rtwdev, REG_ANTWTPD, BIT(20), 0x0);
  rtw_write32_mask(rtwdev, REG_MRCM, BIT(24), 0x0);
 } else if (rx_path == BB_PATH_AB) {
  rtw_write32_mask(rtwdev, REG_RXFNCTL, 0x300, 0x1);
  rtw_write32_mask(rtwdev, REG_RXFNCTL, 0x600000, 0x1);
  rtw_write32_mask(rtwdev, REG_AGCSWSH, BIT(17), 0x1);
  rtw_write32_mask(rtwdev, REG_ANTWTPD, BIT(20), 0x1);
  rtw_write32_mask(rtwdev, REG_MRCM, BIT(24), 0x1);
 }

 rtw_write32_mask(rtwdev, 0x824, 0x0f000000, rx_path);
 rtw_write32_mask(rtwdev, 0x824, 0x000f0000, rx_path);
}
