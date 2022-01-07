
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_bt_link_info {scalar_t__ pan_exist; scalar_t__ a2dp_exist; scalar_t__ hid_exist; scalar_t__ sco_exist; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;int (* btc_set ) (struct btc_coexist*,int ,int*) ;scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct btc_bt_link_info bt_link_info; struct rtl_priv* adapter; } ;
struct TYPE_4__ {scalar_t__ bt_status; } ;
struct TYPE_3__ {scalar_t__ c2h_bt_inquiry_page; scalar_t__ under_ips; } ;


 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_GET_BL_WIFI_LINK ;
 int BTC_GET_BL_WIFI_ROAM ;
 int BTC_GET_BL_WIFI_SCAN ;
 int BTC_GET_BL_WIFI_UNDER_5G ;
 int BTC_GET_U4_WIFI_LINK_STATUS ;
 int BTC_RSSI_STATE_HIGH ;
 int BTC_SET_BL_INC_SCAN_DEV_NUM ;
 scalar_t__ BT_8821A_1ANT_BT_STATUS_ACL_BUSY ;
 scalar_t__ BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY ;
 scalar_t__ BT_8821A_1ANT_BT_STATUS_SCO_BUSY ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int WIFI_P2P_GO_CONNECTED ;
 int btc8821a1ant_act_wifi_not_conn_scan (struct btc_coexist*) ;
 int btc8821a1ant_action_bt_inquiry (struct btc_coexist*) ;
 int btc8821a1ant_action_hs (struct btc_coexist*) ;
 int btc8821a1ant_action_wifi_connected (struct btc_coexist*) ;
 int btc8821a1ant_action_wifi_multi_port (struct btc_coexist*) ;
 int btc8821a1ant_action_wifi_not_connected (struct btc_coexist*) ;
 int btc8821a1ant_action_wifi_not_connected_asso_auth (struct btc_coexist*) ;
 int btc8821a1ant_coex_under_5g (struct btc_coexist*) ;
 int btc8821a1ant_limited_rx (struct btc_coexist*,int ,int,int,int) ;
 int btc8821a1ant_limited_tx (struct btc_coexist*,int ,int,int,int ,int) ;
 int btc8821a1ant_run_sw_coex_mech (struct btc_coexist*) ;
 int btc8821a1ant_wifi_rssi_state (struct btc_coexist*,int,int,int,int ) ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;
 int stub5 (struct btc_coexist*,int ,int*) ;
 int stub6 (struct btc_coexist*,int ,int*) ;
 int stub7 (struct btc_coexist*,int ,int*) ;
 int stub8 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void btc8821a1ant_run_coexist_mechanism(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
 bool wifi_connected = 0, bt_hs_on = 0;
 bool increase_scan_dev_num = 0;
 bool bt_ctrl_agg_buf_size = 0;
 u8 agg_buf_size = 5;
 u8 wifi_rssi_state = BTC_RSSI_STATE_HIGH;
 u32 wifi_link_status = 0;
 u32 num_of_wifi_link = 0;
 bool wifi_under_5g = 0;

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

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);
 if (wifi_under_5g) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], RunCoexistMechanism(), return for 5G <===\n");
  btc8821a1ant_coex_under_5g(btcoexist);
  return;
 }

 if ((BT_8821A_1ANT_BT_STATUS_ACL_BUSY == coex_dm->bt_status) ||
     (BT_8821A_1ANT_BT_STATUS_SCO_BUSY == coex_dm->bt_status) ||
     (BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY == coex_dm->bt_status))
  increase_scan_dev_num = 1;

 btcoexist->btc_set(btcoexist, BTC_SET_BL_INC_SCAN_DEV_NUM,
      &increase_scan_dev_num);

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
      &wifi_connected);

 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_LINK_STATUS,
      &wifi_link_status);
 num_of_wifi_link = wifi_link_status >> 16;
 if ((num_of_wifi_link >= 2) ||
     (wifi_link_status & WIFI_P2P_GO_CONNECTED)) {
  btc8821a1ant_limited_tx(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);
  btc8821a1ant_limited_rx(btcoexist, NORMAL_EXEC, 0,
     bt_ctrl_agg_buf_size, agg_buf_size);
  btc8821a1ant_action_wifi_multi_port(btcoexist);
  return;
 }

 if (!bt_link_info->sco_exist && !bt_link_info->hid_exist) {
  btc8821a1ant_limited_tx(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);
 } else {
  if (wifi_connected) {
   wifi_rssi_state =
    btc8821a1ant_wifi_rssi_state(btcoexist, 1, 2,
            30, 0);
   btc8821a1ant_limited_tx(btcoexist,
      NORMAL_EXEC, 1, 1,
      0, 1);
  } else {
   btc8821a1ant_limited_tx(btcoexist, NORMAL_EXEC,
      0, 0, 0, 0);
  }
 }

 if (bt_link_info->sco_exist) {
  bt_ctrl_agg_buf_size = 1;
  agg_buf_size = 0x3;
 } else if (bt_link_info->hid_exist) {
  bt_ctrl_agg_buf_size = 1;
  agg_buf_size = 0x5;
 } else if (bt_link_info->a2dp_exist || bt_link_info->pan_exist) {
  bt_ctrl_agg_buf_size = 1;
  agg_buf_size = 0x8;
 }
 btc8821a1ant_limited_rx(btcoexist, NORMAL_EXEC, 0,
    bt_ctrl_agg_buf_size, agg_buf_size);

 btc8821a1ant_run_sw_coex_mech(btcoexist);

 btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
 if (coex_sta->c2h_bt_inquiry_page) {
  btc8821a1ant_action_bt_inquiry(btcoexist);
  return;
 } else if (bt_hs_on) {
  btc8821a1ant_action_hs(btcoexist);
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
    btc8821a1ant_act_wifi_not_conn_scan(btcoexist);
   else
    btc8821a1ant_action_wifi_not_connected_asso_auth(
     btcoexist);
  } else {
   btc8821a1ant_action_wifi_not_connected(btcoexist);
  }
 } else {

  btc8821a1ant_action_wifi_connected(btcoexist);
 }
}
