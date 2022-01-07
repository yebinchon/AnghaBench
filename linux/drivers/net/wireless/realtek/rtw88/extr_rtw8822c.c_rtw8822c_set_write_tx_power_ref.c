
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct rtw_hal {size_t rf_path_num; } ;
struct rtw_dev {struct rtw_hal hal; } ;


 int BIT (int) ;
 int rtw_write32_mask (struct rtw_dev*,int,int,size_t) ;

__attribute__((used)) static void
rtw8822c_set_write_tx_power_ref(struct rtw_dev *rtwdev, u8 *tx_pwr_ref_cck,
    u8 *tx_pwr_ref_ofdm)
{
 struct rtw_hal *hal = &rtwdev->hal;
 u32 txref_cck[2] = {0x18a0, 0x41a0};
 u32 txref_ofdm[2] = {0x18e8, 0x41e8};
 u8 path;

 for (path = 0; path < hal->rf_path_num; path++) {
  rtw_write32_mask(rtwdev, 0x1c90, BIT(15), 0);
  rtw_write32_mask(rtwdev, txref_cck[path], 0x7f0000,
     tx_pwr_ref_cck[path]);
 }
 for (path = 0; path < hal->rf_path_num; path++) {
  rtw_write32_mask(rtwdev, 0x1c90, BIT(15), 0);
  rtw_write32_mask(rtwdev, txref_ofdm[path], 0x1fc00,
     tx_pwr_ref_ofdm[path]);
 }
}
