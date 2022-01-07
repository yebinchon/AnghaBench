
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_bt_link_info {int sco_exist; scalar_t__ bt_link_exist; scalar_t__ a2dp_exist; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;int (* btc_set ) (struct btc_coexist*,int ,int*) ;scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct btc_bt_link_info bt_link_info; struct rtl_priv* adapter; } ;
struct TYPE_4__ {scalar_t__ bt_status; } ;
struct TYPE_3__ {scalar_t__ c2h_bt_inquiry_page; scalar_t__ bt_whck_test; scalar_t__ under_ips; } ;


 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_GET_BL_WIFI_LINK ;
 int BTC_GET_BL_WIFI_ROAM ;
 int BTC_GET_BL_WIFI_SCAN ;
 int BTC_GET_U1_IOT_PEER ;
 int BTC_GET_U4_WIFI_BW ;
 int BTC_GET_U4_WIFI_LINK_STATUS ;
 scalar_t__ BTC_IOT_PEER_BROADCOM ;
 scalar_t__ BTC_IOT_PEER_CISCO ;
 scalar_t__ BTC_IOT_PEER_UNKNOWN ;
 int BTC_SET_BL_INC_SCAN_DEV_NUM ;
 int BTC_SET_BL_MIRACAST_PLUS_BT ;
 int BTC_WIFI_BW_HT40 ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_BUSY ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_SCO_BUSY ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int WIFI_P2P_GO_CONNECTED ;
 int btc8723b1ant_act_wifi_not_conn_asso_auth (struct btc_coexist*) ;
 int btc8723b1ant_action_wifi_not_conn (struct btc_coexist*) ;
 int btc8723b1ant_action_wifi_not_conn_scan (struct btc_coexist*) ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int halbtc8723b1ant_action_bt_inquiry (struct btc_coexist*) ;
 int halbtc8723b1ant_action_bt_whck_test (struct btc_coexist*) ;
 int halbtc8723b1ant_action_hs (struct btc_coexist*) ;
 int halbtc8723b1ant_action_wifi_connected (struct btc_coexist*) ;
 int halbtc8723b1ant_action_wifi_multiport (struct btc_coexist*) ;
 int halbtc8723b1ant_limited_rx (struct btc_coexist*,int ,int,int,int) ;
 int halbtc8723b1ant_limited_tx (struct btc_coexist*,int ,int,int,int ,int) ;
 int halbtc8723b1ant_sw_mechanism (struct btc_coexist*,int) ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub10 (struct btc_coexist*,int ,int*) ;
 int stub11 (struct btc_coexist*,int ,int*) ;
 int stub12 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;
 int stub5 (struct btc_coexist*,int ,int*) ;
 int stub6 (struct btc_coexist*,int ,int*) ;
 int stub7 (struct btc_coexist*,int ,int*) ;
 int stub8 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub9 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_run_coexist_mechanism(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
 bool wifi_connected = 0, bt_hs_on = 0, wifi_busy = 0;
 bool increase_scan_dev_num = 0;
 bool bt_ctrl_agg_buf_size = 0;
 bool miracast_plus_bt = 0;
 u8 agg_buf_size = 5;
 u8 iot_peer = BTC_IOT_PEER_UNKNOWN;
 u32 wifi_link_status = 0;
 u32 num_of_wifi_link = 0;
 u32 wifi_bw;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], RunCoexistMechanism()===>\n");

 if (btcoexist->manual_control) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\n");
  return;
 }

 if (btcoexist->stop_coex_dm) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], RunCoexistMechanism(), return for Stop Coex DM <===\n");
  return;
 }

 if (coex_sta->under_ips) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], wifi is under IPS !!!\n");
  return;
 }

 if (coex_sta->bt_whck_test) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], wifi is under IPS !!!\n");
  halbtc8723b1ant_action_bt_whck_test(btcoexist);
  return;
 }

 if (coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_ACL_BUSY ||
     coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_SCO_BUSY ||
     coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY)
  increase_scan_dev_num = 1;

 btcoexist->btc_set(btcoexist, BTC_SET_BL_INC_SCAN_DEV_NUM,
      &increase_scan_dev_num);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
      &wifi_connected);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);

 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_LINK_STATUS,
      &wifi_link_status);
 num_of_wifi_link = wifi_link_status >> 16;

 if (num_of_wifi_link >= 2 ||
     wifi_link_status & WIFI_P2P_GO_CONNECTED) {
  if (bt_link_info->bt_link_exist) {
   halbtc8723b1ant_limited_tx(btcoexist, NORMAL_EXEC, 1, 1,
         0, 1);
   miracast_plus_bt = 1;
  } else {
   halbtc8723b1ant_limited_tx(btcoexist, NORMAL_EXEC, 0, 0,
         0, 0);
   miracast_plus_bt = 0;
  }
  btcoexist->btc_set(btcoexist, BTC_SET_BL_MIRACAST_PLUS_BT,
       &miracast_plus_bt);
  halbtc8723b1ant_limited_rx(btcoexist, NORMAL_EXEC, 0,
        bt_ctrl_agg_buf_size, agg_buf_size);

  if ((bt_link_info->a2dp_exist || wifi_busy) &&
      (coex_sta->c2h_bt_inquiry_page))
   halbtc8723b1ant_action_bt_inquiry(btcoexist);
  else
   halbtc8723b1ant_action_wifi_multiport(btcoexist);

  return;
 }

 miracast_plus_bt = 0;
 btcoexist->btc_set(btcoexist, BTC_SET_BL_MIRACAST_PLUS_BT,
      &miracast_plus_bt);
 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);

 if (bt_link_info->bt_link_exist && wifi_connected) {
  halbtc8723b1ant_limited_tx(btcoexist, NORMAL_EXEC, 1, 1, 0, 1);

  btcoexist->btc_get(btcoexist, BTC_GET_U1_IOT_PEER, &iot_peer);

  if (iot_peer != BTC_IOT_PEER_CISCO &&
      iot_peer != BTC_IOT_PEER_BROADCOM) {
   bool sco_exist = bt_link_info->sco_exist;

   halbtc8723b1ant_limited_rx(btcoexist,
         NORMAL_EXEC, sco_exist,
         0, 0x5);
  } else {
   if (bt_link_info->sco_exist) {
    halbtc8723b1ant_limited_rx(btcoexist,
          NORMAL_EXEC, 1,
          0, 0x5);
   } else {
    if (wifi_bw == BTC_WIFI_BW_HT40)
     halbtc8723b1ant_limited_rx(
      btcoexist, NORMAL_EXEC, 0,
      1, 0x10);
    else
     halbtc8723b1ant_limited_rx(
      btcoexist, NORMAL_EXEC, 0,
      1, 0x8);
   }
  }

  halbtc8723b1ant_sw_mechanism(btcoexist, 1);
 } else {
  halbtc8723b1ant_limited_tx(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);

  halbtc8723b1ant_limited_rx(btcoexist, NORMAL_EXEC, 0, 0,
        0x5);

  halbtc8723b1ant_sw_mechanism(btcoexist, 0);
 }
 btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);

 if (coex_sta->c2h_bt_inquiry_page) {
  halbtc8723b1ant_action_bt_inquiry(btcoexist);
  return;
 } else if (bt_hs_on) {
  halbtc8723b1ant_action_hs(btcoexist);
  return;
 }

 if (!wifi_connected) {
  bool scan = 0, link = 0, roam = 0;

  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], wifi is non connected-idle !!!\n");

  btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_SCAN, &scan);
  btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_LINK, &link);
  btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_ROAM, &roam);

  if (scan || link || roam) {
   if (scan)
    btc8723b1ant_action_wifi_not_conn_scan(
             btcoexist);
   else
    btc8723b1ant_act_wifi_not_conn_asso_auth(
             btcoexist);
  } else {
   btc8723b1ant_action_wifi_not_conn(btcoexist);
  }
 } else {
  halbtc8723b1ant_action_wifi_connected(btcoexist);
 }
}
