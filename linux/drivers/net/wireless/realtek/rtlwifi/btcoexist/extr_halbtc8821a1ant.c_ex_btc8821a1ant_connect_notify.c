
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct rtl_priv* adapter; } ;
struct TYPE_4__ {scalar_t__ arp_cnt; } ;
struct TYPE_3__ {int wifi_is_high_pri_task; scalar_t__ c2h_bt_inquiry_page; scalar_t__ bt_disabled; } ;


 scalar_t__ BTC_ASSOCIATE_FINISH ;
 scalar_t__ BTC_ASSOCIATE_START ;
 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_GET_BL_WIFI_UNDER_5G ;
 int BTC_GET_U4_WIFI_LINK_STATUS ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8821a1ant_act_wifi_not_conn_scan (struct btc_coexist*) ;
 int btc8821a1ant_action_bt_inquiry (struct btc_coexist*) ;
 int btc8821a1ant_action_hs (struct btc_coexist*) ;
 int btc8821a1ant_action_wifi_connected (struct btc_coexist*) ;
 int btc8821a1ant_action_wifi_multi_port (struct btc_coexist*) ;
 int btc8821a1ant_action_wifi_not_connected (struct btc_coexist*) ;
 int btc8821a1ant_coex_under_5g (struct btc_coexist*) ;
 int btc8821a1ant_limited_rx (struct btc_coexist*,int ,int,int,scalar_t__) ;
 int btc8821a1ant_limited_tx (struct btc_coexist*,int ,int ,int ,int ,int ) ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;

void ex_btc8821a1ant_connect_notify(struct btc_coexist *btcoexist, u8 type)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 bool wifi_connected = 0, bt_hs_on = 0;
 u32 wifi_link_status = 0;
 u32 num_of_wifi_link = 0;
 bool bt_ctrl_agg_buf_size = 0;
 bool wifi_under_5g = 0;
 u8 agg_buf_size = 5;

 if (btcoexist->manual_control || btcoexist->stop_coex_dm ||
     coex_sta->bt_disabled)
  return;
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);
 if (wifi_under_5g) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], RunCoexistMechanism(), return for 5G <===\n");
  btc8821a1ant_coex_under_5g(btcoexist);
  return;
 }

 if (type == BTC_ASSOCIATE_START) {
  coex_sta->wifi_is_high_pri_task = 1;
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], CONNECT START notify\n");
  coex_dm->arp_cnt = 0;
 } else {
  coex_sta->wifi_is_high_pri_task = 0;
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], CONNECT FINISH notify\n");
  coex_dm->arp_cnt = 0;
 }

 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_LINK_STATUS,
      &wifi_link_status);
 num_of_wifi_link = wifi_link_status >> 16;
 if (num_of_wifi_link >= 2) {
  btc8821a1ant_limited_tx(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);
  btc8821a1ant_limited_rx(btcoexist, NORMAL_EXEC, 0,
     bt_ctrl_agg_buf_size, agg_buf_size);
  btc8821a1ant_action_wifi_multi_port(btcoexist);
  return;
 }

 btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
 if (coex_sta->c2h_bt_inquiry_page) {
  btc8821a1ant_action_bt_inquiry(btcoexist);
  return;
 } else if (bt_hs_on) {
  btc8821a1ant_action_hs(btcoexist);
  return;
 }

 if (BTC_ASSOCIATE_START == type) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], CONNECT START notify\n");
  btc8821a1ant_act_wifi_not_conn_scan(btcoexist);
 } else if (BTC_ASSOCIATE_FINISH == type) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], CONNECT FINISH notify\n");

  btcoexist->btc_get(btcoexist,
    BTC_GET_BL_WIFI_CONNECTED, &wifi_connected);
  if (!wifi_connected) {

   btc8821a1ant_action_wifi_not_connected(btcoexist);
  } else {
   btc8821a1ant_action_wifi_connected(btcoexist);
  }
 }
}
