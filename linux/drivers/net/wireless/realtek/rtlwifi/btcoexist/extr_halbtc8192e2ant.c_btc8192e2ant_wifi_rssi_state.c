
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {size_t* pre_wifi_rssi_state; } ;


 int BTC_GET_S4_WIFI_RSSI ;
 size_t BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT ;
 size_t BTC_RSSI_STATE_HIGH ;
 scalar_t__ BTC_RSSI_STATE_LOW ;
 scalar_t__ BTC_RSSI_STATE_MEDIUM ;
 size_t BTC_RSSI_STATE_STAY_HIGH ;
 scalar_t__ BTC_RSSI_STATE_STAY_LOW ;
 scalar_t__ BTC_RSSI_STATE_STAY_MEDIUM ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static u8 btc8192e2ant_wifi_rssi_state(struct btc_coexist *btcoexist,
           u8 index, u8 level_num, u8 rssi_thresh,
           u8 rssi_thresh1)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 int wifi_rssi = 0;
 u8 wifi_rssi_state = coex_sta->pre_wifi_rssi_state[index];

 btcoexist->btc_get(btcoexist, BTC_GET_S4_WIFI_RSSI, &wifi_rssi);

 if (level_num == 2) {
  if ((coex_sta->pre_wifi_rssi_state[index] ==
       BTC_RSSI_STATE_LOW) ||
      (coex_sta->pre_wifi_rssi_state[index] ==
       BTC_RSSI_STATE_STAY_LOW)) {
   if (wifi_rssi >=
       (rssi_thresh + BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT))
    wifi_rssi_state = BTC_RSSI_STATE_HIGH;
   else
    wifi_rssi_state = BTC_RSSI_STATE_STAY_LOW;
  } else {
   if (wifi_rssi < rssi_thresh)
    wifi_rssi_state = BTC_RSSI_STATE_LOW;
   else
    wifi_rssi_state = BTC_RSSI_STATE_STAY_HIGH;
  }
 } else if (level_num == 3) {
  if (rssi_thresh > rssi_thresh1) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], wifi RSSI thresh error!!\n");
   return coex_sta->pre_wifi_rssi_state[index];
  }

  if ((coex_sta->pre_wifi_rssi_state[index] ==
       BTC_RSSI_STATE_LOW) ||
      (coex_sta->pre_wifi_rssi_state[index] ==
       BTC_RSSI_STATE_STAY_LOW)) {
   if (wifi_rssi >=
       (rssi_thresh + BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT))
    wifi_rssi_state = BTC_RSSI_STATE_MEDIUM;
   else
    wifi_rssi_state = BTC_RSSI_STATE_STAY_LOW;
  } else if ((coex_sta->pre_wifi_rssi_state[index] ==
       BTC_RSSI_STATE_MEDIUM) ||
      (coex_sta->pre_wifi_rssi_state[index] ==
       BTC_RSSI_STATE_STAY_MEDIUM)) {
   if (wifi_rssi >= (rssi_thresh1 +
      BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT))
    wifi_rssi_state = BTC_RSSI_STATE_HIGH;
   else if (wifi_rssi < rssi_thresh)
    wifi_rssi_state = BTC_RSSI_STATE_LOW;
   else
    wifi_rssi_state = BTC_RSSI_STATE_STAY_MEDIUM;
  } else {
   if (wifi_rssi < rssi_thresh1)
    wifi_rssi_state = BTC_RSSI_STATE_MEDIUM;
   else
    wifi_rssi_state = BTC_RSSI_STATE_STAY_HIGH;
  }
 }

 coex_sta->pre_wifi_rssi_state[index] = wifi_rssi_state;

 return wifi_rssi_state;
}
