
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct rtw_hal {scalar_t__**** tx_pwr_limit_5g; } ;
struct rtw_dev {TYPE_1__* chip; struct rtw_hal hal; } ;
typedef scalar_t__ s8 ;
struct TYPE_2__ {size_t max_power_index; } ;



__attribute__((used)) static void
rtw_xref_5g_txpwr_lmt(struct rtw_dev *rtwdev, u8 regd,
        u8 bw, u8 ch_idx, u8 rs_ht, u8 rs_vht)
{
 struct rtw_hal *hal = &rtwdev->hal;
 u8 max_power_index = rtwdev->chip->max_power_index;
 s8 lmt_ht = hal->tx_pwr_limit_5g[regd][bw][rs_ht][ch_idx];
 s8 lmt_vht = hal->tx_pwr_limit_5g[regd][bw][rs_vht][ch_idx];

 if (lmt_ht == lmt_vht)
  return;

 if (lmt_ht == max_power_index)
  hal->tx_pwr_limit_5g[regd][bw][rs_ht][ch_idx] = lmt_vht;

 else if (lmt_vht == max_power_index)
  hal->tx_pwr_limit_5g[regd][bw][rs_vht][ch_idx] = lmt_ht;
}
