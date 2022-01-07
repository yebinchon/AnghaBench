
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_TURBO ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8821ae_dm_edca_choose_traffic_idx(
 struct ieee80211_hw *hw, u64 cur_tx_bytes,
 u64 cur_rx_bytes, bool b_bias_on_rx,
 bool *pb_is_cur_rdl_state)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (b_bias_on_rx) {
  if (cur_tx_bytes > (cur_rx_bytes*4)) {
   *pb_is_cur_rdl_state = 0;
   RT_TRACE(rtlpriv, COMP_TURBO, DBG_LOUD,
     "Uplink Traffic\n");
  } else {
   *pb_is_cur_rdl_state = 1;
   RT_TRACE(rtlpriv, COMP_TURBO, DBG_LOUD,
     "Balance Traffic\n");
  }
 } else {
  if (cur_rx_bytes > (cur_tx_bytes*4)) {
   *pb_is_cur_rdl_state = 1;
   RT_TRACE(rtlpriv, COMP_TURBO, DBG_LOUD,
     "Downlink	Traffic\n");
  } else {
   *pb_is_cur_rdl_state = 0;
   RT_TRACE(rtlpriv, COMP_TURBO, DBG_LOUD,
     "Balance Traffic\n");
  }
 }
 return;
}
