
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_hal {int* cch_by_bw; } ;


 size_t RTW_CHANNEL_WIDTH_20 ;
 scalar_t__ RTW_CHANNEL_WIDTH_MAX ;
 scalar_t__ RTW_RATE_SECTION_MAX ;
 scalar_t__ RTW_REGD_MAX ;
 int __rtw_phy_tx_power_limit_config (struct rtw_hal*,scalar_t__,scalar_t__,scalar_t__) ;

void rtw_phy_tx_power_limit_config(struct rtw_hal *hal)
{
 u8 regd, bw, rs;


 hal->cch_by_bw[RTW_CHANNEL_WIDTH_20] = 1;

 for (regd = 0; regd < RTW_REGD_MAX; regd++)
  for (bw = 0; bw < RTW_CHANNEL_WIDTH_MAX; bw++)
   for (rs = 0; rs < RTW_RATE_SECTION_MAX; rs++)
    __rtw_phy_tx_power_limit_config(hal, regd, bw, rs);
}
