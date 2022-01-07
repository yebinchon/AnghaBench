
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ bt_pre_rssi_state; int cstate; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int BT_COEX_STATE_WIFI_RSSI_HIGH ;
 int BT_COEX_STATE_WIFI_RSSI_LOW ;
 int BT_COEX_STATE_WIFI_RSSI_MEDIUM ;
 int BT_FW_COEX_THRESH_TOL ;
 int BT_RSSI_STATE_HIGH ;
 scalar_t__ BT_RSSI_STATE_LOW ;
 scalar_t__ BT_RSSI_STATE_MEDIUM ;
 int BT_RSSI_STATE_STAY_HIGH ;
 scalar_t__ BT_RSSI_STATE_STAY_LOW ;
 scalar_t__ BT_RSSI_STATE_STAY_MEDIUM ;
 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 long rtl8723e_dm_bt_get_rx_ss (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

u8 rtl8723e_dm_bt_check_coex_rssi_state(struct ieee80211_hw *hw,
     u8 level_num,
     u8 rssi_thresh,
     u8 rssi_thresh1)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 long undecoratedsmoothed_pwdb = 0;
 u8 bt_rssi_state = 0;

 undecoratedsmoothed_pwdb = rtl8723e_dm_bt_get_rx_ss(hw);

 if (level_num == 2) {
  rtlpriv->btcoexist.cstate &=
   ~BT_COEX_STATE_WIFI_RSSI_MEDIUM;

  if ((rtlpriv->btcoexist.bt_pre_rssi_state ==
       BT_RSSI_STATE_LOW) ||
      (rtlpriv->btcoexist.bt_pre_rssi_state ==
       BT_RSSI_STATE_STAY_LOW)) {
   if (undecoratedsmoothed_pwdb >=
       (rssi_thresh + BT_FW_COEX_THRESH_TOL)) {
    bt_rssi_state = BT_RSSI_STATE_HIGH;
    rtlpriv->btcoexist.cstate
     |= BT_COEX_STATE_WIFI_RSSI_HIGH;
    rtlpriv->btcoexist.cstate
     &= ~BT_COEX_STATE_WIFI_RSSI_LOW;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state switch to High\n");
   } else {
    bt_rssi_state = BT_RSSI_STATE_STAY_LOW;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state stay at Low\n");
   }
  } else {
   if (undecoratedsmoothed_pwdb < rssi_thresh) {
    bt_rssi_state = BT_RSSI_STATE_LOW;
    rtlpriv->btcoexist.cstate
     |= BT_COEX_STATE_WIFI_RSSI_LOW;
    rtlpriv->btcoexist.cstate
     &= ~BT_COEX_STATE_WIFI_RSSI_HIGH;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state switch to Low\n");
   } else {
    bt_rssi_state = BT_RSSI_STATE_STAY_HIGH;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state stay at High\n");
   }
  }
 } else if (level_num == 3) {
  if (rssi_thresh > rssi_thresh1) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
     "[DM][BT], RSSI thresh error!!\n");
   return rtlpriv->btcoexist.bt_pre_rssi_state;
  }
  if ((rtlpriv->btcoexist.bt_pre_rssi_state ==
       BT_RSSI_STATE_LOW) ||
      (rtlpriv->btcoexist.bt_pre_rssi_state ==
       BT_RSSI_STATE_STAY_LOW)) {
   if (undecoratedsmoothed_pwdb >=
       (rssi_thresh + BT_FW_COEX_THRESH_TOL)) {
    bt_rssi_state = BT_RSSI_STATE_MEDIUM;
    rtlpriv->btcoexist.cstate
     |= BT_COEX_STATE_WIFI_RSSI_MEDIUM;
    rtlpriv->btcoexist.cstate
     &= ~BT_COEX_STATE_WIFI_RSSI_LOW;
    rtlpriv->btcoexist.cstate
     &= ~BT_COEX_STATE_WIFI_RSSI_HIGH;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state switch to Medium\n");
   } else {
    bt_rssi_state = BT_RSSI_STATE_STAY_LOW;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state stay at Low\n");
   }
  } else if ((rtlpriv->btcoexist.bt_pre_rssi_state ==
    BT_RSSI_STATE_MEDIUM) ||
   (rtlpriv->btcoexist.bt_pre_rssi_state ==
    BT_RSSI_STATE_STAY_MEDIUM)) {
   if (undecoratedsmoothed_pwdb >=
       (rssi_thresh1 + BT_FW_COEX_THRESH_TOL)) {
    bt_rssi_state = BT_RSSI_STATE_HIGH;
    rtlpriv->btcoexist.cstate
     |= BT_COEX_STATE_WIFI_RSSI_HIGH;
    rtlpriv->btcoexist.cstate
     &= ~BT_COEX_STATE_WIFI_RSSI_LOW;
    rtlpriv->btcoexist.cstate
     &= ~BT_COEX_STATE_WIFI_RSSI_MEDIUM;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state switch to High\n");
   } else if (undecoratedsmoothed_pwdb < rssi_thresh) {
    bt_rssi_state = BT_RSSI_STATE_LOW;
    rtlpriv->btcoexist.cstate
     |= BT_COEX_STATE_WIFI_RSSI_LOW;
    rtlpriv->btcoexist.cstate
     &= ~BT_COEX_STATE_WIFI_RSSI_HIGH;
    rtlpriv->btcoexist.cstate
     &= ~BT_COEX_STATE_WIFI_RSSI_MEDIUM;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state switch to Low\n");
   } else {
    bt_rssi_state = BT_RSSI_STATE_STAY_MEDIUM;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state stay at Medium\n");
   }
  } else {
   if (undecoratedsmoothed_pwdb < rssi_thresh1) {
    bt_rssi_state = BT_RSSI_STATE_MEDIUM;
    rtlpriv->btcoexist.cstate
     |= BT_COEX_STATE_WIFI_RSSI_MEDIUM;
    rtlpriv->btcoexist.cstate
     &= ~BT_COEX_STATE_WIFI_RSSI_HIGH;
    rtlpriv->btcoexist.cstate
     &= ~BT_COEX_STATE_WIFI_RSSI_LOW;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state switch to Medium\n");
   } else {
    bt_rssi_state = BT_RSSI_STATE_STAY_HIGH;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
      "[DM][BT], RSSI state stay at High\n");
   }
  }
 }
 rtlpriv->btcoexist.bt_pre_rssi_state = bt_rssi_state;
 return bt_rssi_state;
}
