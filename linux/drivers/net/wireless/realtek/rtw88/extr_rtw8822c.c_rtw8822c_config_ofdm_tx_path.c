
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_dev {int dummy; } ;


 scalar_t__ BB_PATH_A ;
 scalar_t__ BB_PATH_B ;
 int REG_ANTMAP0 ;
 int REG_TXLGMAP ;
 int rtw_write32_mask (struct rtw_dev*,int ,int,int) ;

__attribute__((used)) static void rtw8822c_config_ofdm_tx_path(struct rtw_dev *rtwdev, u8 tx_path,
      bool is_tx2_path)
{
 if (tx_path == BB_PATH_A) {
  rtw_write32_mask(rtwdev, REG_ANTMAP0, 0xff, 0x11);
  rtw_write32_mask(rtwdev, REG_TXLGMAP, 0xff, 0x0);
 } else if (tx_path == BB_PATH_B) {
  rtw_write32_mask(rtwdev, REG_ANTMAP0, 0xff, 0x12);
  rtw_write32_mask(rtwdev, REG_TXLGMAP, 0xff, 0x0);
 } else {
  if (is_tx2_path) {
   rtw_write32_mask(rtwdev, REG_ANTMAP0, 0xff, 0x33);
   rtw_write32_mask(rtwdev, REG_TXLGMAP, 0xffff, 0x0404);
  } else {
   rtw_write32_mask(rtwdev, REG_ANTMAP0, 0xff, 0x31);
   rtw_write32_mask(rtwdev, REG_TXLGMAP, 0xffff, 0x0400);
  }
 }
}
