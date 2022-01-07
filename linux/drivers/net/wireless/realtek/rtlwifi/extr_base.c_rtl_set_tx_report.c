
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtlwifi_tx_info {int dummy; } ;
struct rtl_tcb_desc {scalar_t__ use_spe_rpt; } ;
struct ieee80211_hw {int dummy; } ;


 int SET_TX_DESC_SPE_RPT (int *,int) ;
 int SET_TX_DESC_SW_DEFINE (int *,int ) ;
 int rtl_get_tx_report_sn (struct ieee80211_hw*,struct rtlwifi_tx_info*) ;

void rtl_set_tx_report(struct rtl_tcb_desc *ptcb_desc, u8 *pdesc,
         struct ieee80211_hw *hw, struct rtlwifi_tx_info *tx_info)
{
 if (ptcb_desc->use_spe_rpt) {
  u16 sn = rtl_get_tx_report_sn(hw, tx_info);

  SET_TX_DESC_SPE_RPT(pdesc, 1);
  SET_TX_DESC_SW_DEFINE(pdesc, sn);
 }
}
