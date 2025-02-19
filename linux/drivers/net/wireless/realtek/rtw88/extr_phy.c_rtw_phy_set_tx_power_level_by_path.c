
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_hal {scalar_t__ current_band_type; } ;
struct rtw_dev {struct rtw_hal hal; } ;


 scalar_t__ RTW_BAND_2G ;
 scalar_t__ RTW_RATE_SECTION_CCK ;
 scalar_t__ RTW_RATE_SECTION_MAX ;
 scalar_t__ RTW_RATE_SECTION_OFDM ;
 int rtw_phy_set_tx_power_index_by_rs (struct rtw_dev*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void rtw_phy_set_tx_power_level_by_path(struct rtw_dev *rtwdev,
            u8 ch, u8 path)
{
 struct rtw_hal *hal = &rtwdev->hal;
 u8 rs;


 if (hal->current_band_type == RTW_BAND_2G)
  rs = RTW_RATE_SECTION_CCK;
 else
  rs = RTW_RATE_SECTION_OFDM;

 for (; rs < RTW_RATE_SECTION_MAX; rs++)
  rtw_phy_set_tx_power_index_by_rs(rtwdev, ch, path, rs);
}
