
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {scalar_t__ bt_status; } ;


 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 scalar_t__ BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE ;
 scalar_t__ BT_8821A_1ANT_BT_STATUS_NON_CONNECTED_IDLE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8821a1ant_sw_mechanism (struct btc_coexist*,int) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static bool btc8821a1ant_is_common_action(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 bool common = 0, wifi_connected = 0, wifi_busy = 0;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
      &wifi_connected);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);

 if (!wifi_connected &&
     BT_8821A_1ANT_BT_STATUS_NON_CONNECTED_IDLE ==
     coex_dm->bt_status) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi non connected-idle + BT non connected-idle!!\n");
  btc8821a1ant_sw_mechanism(btcoexist, 0);

  common = 1;
 } else if (wifi_connected &&
     (BT_8821A_1ANT_BT_STATUS_NON_CONNECTED_IDLE ==
      coex_dm->bt_status)) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi connected + BT non connected-idle!!\n");
  btc8821a1ant_sw_mechanism(btcoexist, 0);

  common = 1;
 } else if (!wifi_connected &&
     (BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE ==
      coex_dm->bt_status)) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi non connected-idle + BT connected-idle!!\n");
  btc8821a1ant_sw_mechanism(btcoexist, 0);

  common = 1;
 } else if (wifi_connected &&
     (BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE ==
      coex_dm->bt_status)) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi connected + BT connected-idle!!\n");
  btc8821a1ant_sw_mechanism(btcoexist, 0);

  common = 1;
 } else if (!wifi_connected &&
     (BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE !=
      coex_dm->bt_status)) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi non connected-idle + BT Busy!!\n");
  btc8821a1ant_sw_mechanism(btcoexist, 0);

  common = 1;
 } else {
  if (wifi_busy) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Wifi Connected-Busy + BT Busy!!\n");
  } else {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Wifi Connected-Idle + BT Busy!!\n");
  }

  common = 0;
 }

 return common;
}
