
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {int pre_bt_rssi_state; long bt_rssi; } ;


 int BTC_RSSI_COEX_THRESH_TOL_8821A_1ANT ;
 int BTC_RSSI_STATE_HIGH ;
 scalar_t__ BTC_RSSI_STATE_LOW ;
 scalar_t__ BTC_RSSI_STATE_MEDIUM ;
 int BTC_RSSI_STATE_STAY_HIGH ;
 scalar_t__ BTC_RSSI_STATE_STAY_LOW ;
 scalar_t__ BTC_RSSI_STATE_STAY_MEDIUM ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 TYPE_1__* coex_sta ;

__attribute__((used)) static u8 btc8821a1ant_bt_rssi_state(struct btc_coexist *btcoexist,
         u8 level_num, u8 rssi_thresh,
         u8 rssi_thresh1)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 long bt_rssi = 0;
 u8 bt_rssi_state = coex_sta->pre_bt_rssi_state;

 bt_rssi = coex_sta->bt_rssi;

 if (level_num == 2) {
  if ((coex_sta->pre_bt_rssi_state == BTC_RSSI_STATE_LOW) ||
      (coex_sta->pre_bt_rssi_state == BTC_RSSI_STATE_STAY_LOW)) {
   if (bt_rssi >= (rssi_thresh +
     BTC_RSSI_COEX_THRESH_TOL_8821A_1ANT)) {
    bt_rssi_state = BTC_RSSI_STATE_HIGH;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state switch to High\n");
   } else {
    bt_rssi_state = BTC_RSSI_STATE_STAY_LOW;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state stay at Low\n");
   }
  } else {
   if (bt_rssi < rssi_thresh) {
    bt_rssi_state = BTC_RSSI_STATE_LOW;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state switch to Low\n");
   } else {
    bt_rssi_state = BTC_RSSI_STATE_STAY_HIGH;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state stay at High\n");
   }
  }
 } else if (level_num == 3) {
  if (rssi_thresh > rssi_thresh1) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], BT Rssi thresh error!!\n");
   return coex_sta->pre_bt_rssi_state;
  }

  if ((coex_sta->pre_bt_rssi_state == BTC_RSSI_STATE_LOW) ||
      (coex_sta->pre_bt_rssi_state == BTC_RSSI_STATE_STAY_LOW)) {
   if (bt_rssi >= (rssi_thresh +
     BTC_RSSI_COEX_THRESH_TOL_8821A_1ANT)) {
    bt_rssi_state = BTC_RSSI_STATE_MEDIUM;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state switch to Medium\n");
   } else {
    bt_rssi_state = BTC_RSSI_STATE_STAY_LOW;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state stay at Low\n");
   }
  } else if ((coex_sta->pre_bt_rssi_state ==
      BTC_RSSI_STATE_MEDIUM) ||
      (coex_sta->pre_bt_rssi_state ==
       BTC_RSSI_STATE_STAY_MEDIUM)) {
   if (bt_rssi >= (rssi_thresh1 +
     BTC_RSSI_COEX_THRESH_TOL_8821A_1ANT)) {
    bt_rssi_state = BTC_RSSI_STATE_HIGH;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state switch to High\n");
   } else if (bt_rssi < rssi_thresh) {
    bt_rssi_state = BTC_RSSI_STATE_LOW;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state switch to Low\n");
   } else {
    bt_rssi_state = BTC_RSSI_STATE_STAY_MEDIUM;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state stay at Medium\n");
   }
  } else {
   if (bt_rssi < rssi_thresh1) {
    bt_rssi_state = BTC_RSSI_STATE_MEDIUM;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state switch to Medium\n");
   } else {
    bt_rssi_state = BTC_RSSI_STATE_STAY_HIGH;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], BT Rssi state stay at High\n");
   }
  }
 }
 coex_sta->pre_bt_rssi_state = bt_rssi_state;

 return bt_rssi_state;
}
