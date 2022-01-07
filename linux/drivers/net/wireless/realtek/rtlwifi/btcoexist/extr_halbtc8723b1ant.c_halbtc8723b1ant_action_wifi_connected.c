
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct TYPE_4__ {scalar_t__ a2dp_only; int hid_only; } ;
struct btc_coexist {TYPE_1__ bt_link_info; int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_6__ {scalar_t__ bt_status; } ;
struct TYPE_5__ {scalar_t__ scan_ap_num; int hid_exist; int a2dp_exist; int pan_exist; } ;


 int BTC_ANT_PATH_PTA ;
 int BTC_GET_BL_WIFI_4_WAY_PROGRESS ;
 int BTC_GET_BL_WIFI_AP_MODE_ENABLE ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_LINK ;
 int BTC_GET_BL_WIFI_ROAM ;
 int BTC_GET_BL_WIFI_SCAN ;
 int BTC_PS_LPS_ON ;
 int BTC_PS_WIFI_NATIVE ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_BUSY ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_SCO_BUSY ;
 scalar_t__ BT_8723B_1ANT_WIFI_NOISY_THRESH ;
 int BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY ;
 int BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8723b1ant_act_bt_sco_hid_only_busy (struct btc_coexist*,int ) ;
 int btc8723b1ant_action_wifi_conn_scan (struct btc_coexist*) ;
 TYPE_3__* coex_dm ;
 TYPE_2__* coex_sta ;
 int halbtc8723b1ant_action_wifi_connected_bt_acl_busy (struct btc_coexist*,int ) ;
 int halbtc8723b1ant_action_wifi_connected_special_packet (struct btc_coexist*) ;
 int halbtc8723b1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int halbtc8723b1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int halbtc8723b1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int halbtc8723b1ant_set_ant_path (struct btc_coexist*,int ,int ,int,int) ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;
 int stub5 (struct btc_coexist*,int ,int*) ;
 int stub6 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_action_wifi_connected(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 bool wifi_busy = 0;
 bool scan = 0, link = 0, roam = 0;
 bool under_4way = 0, ap_enable = 0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], CoexForWifiConnect()===>\n");

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_4_WAY_PROGRESS,
      &under_4way);
 if (under_4way) {
  halbtc8723b1ant_action_wifi_connected_special_packet(btcoexist);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], CoexForWifiConnect(), return for wifi is under 4way<===\n");
  return;
 }

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_SCAN, &scan);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_LINK, &link);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_ROAM, &roam);

 if (scan || link || roam) {
  if (scan)
   btc8723b1ant_action_wifi_conn_scan(btcoexist);
  else
   halbtc8723b1ant_action_wifi_connected_special_packet(
             btcoexist);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], CoexForWifiConnect(), return for wifi is under scan<===\n");
  return;
 }

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_AP_MODE_ENABLE,
      &ap_enable);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);

 if (!ap_enable &&
     coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_ACL_BUSY &&
     !btcoexist->bt_link_info.hid_only) {
  if (btcoexist->bt_link_info.a2dp_only) {
   if (!wifi_busy) {
    halbtc8723b1ant_power_save_state(btcoexist,
        BTC_PS_WIFI_NATIVE,
        0x0, 0x0);
   } else {
    if (coex_sta->scan_ap_num >=
        BT_8723B_1ANT_WIFI_NOISY_THRESH)



     halbtc8723b1ant_power_save_state(
      btcoexist, BTC_PS_WIFI_NATIVE,
      0x0, 0x0);
    else
     halbtc8723b1ant_power_save_state(
      btcoexist, BTC_PS_LPS_ON, 0x50,
      0x4);
   }
  } else if ((!coex_sta->pan_exist) && (!coex_sta->a2dp_exist) &&
      (!coex_sta->hid_exist))
   halbtc8723b1ant_power_save_state(
    btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
  else
   halbtc8723b1ant_power_save_state(btcoexist,
        BTC_PS_LPS_ON,
        0x50, 0x4);
 } else {
  halbtc8723b1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
       0x0, 0x0);
 }

 if (!wifi_busy) {
  if (coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_ACL_BUSY) {
   halbtc8723b1ant_action_wifi_connected_bt_acl_busy(
    btcoexist,
    BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE);
  } else if (coex_dm->bt_status ==
    BT_8723B_1ANT_BT_STATUS_SCO_BUSY ||
      coex_dm->bt_status ==
    BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY) {
   btc8723b1ant_act_bt_sco_hid_only_busy(btcoexist,
         BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE);
  } else {
   halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC,
      0, 8);
   halbtc8723b1ant_set_ant_path(btcoexist,
           BTC_ANT_PATH_PTA,
           NORMAL_EXEC, 0, 0);
   halbtc8723b1ant_coex_table_with_type(btcoexist,
            NORMAL_EXEC, 2);
  }
 } else {
  if (coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_ACL_BUSY) {
   halbtc8723b1ant_action_wifi_connected_bt_acl_busy(
    btcoexist,
    BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY);
  } else if (coex_dm->bt_status ==
    BT_8723B_1ANT_BT_STATUS_SCO_BUSY ||
      coex_dm->bt_status ==
    BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY) {
   btc8723b1ant_act_bt_sco_hid_only_busy(btcoexist,
        BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY);
  } else {
   halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC,
      1, 32);
   halbtc8723b1ant_set_ant_path(btcoexist,
           BTC_ANT_PATH_PTA,
           NORMAL_EXEC, 0, 0);
   halbtc8723b1ant_coex_table_with_type(btcoexist,
            NORMAL_EXEC, 4);
  }
 }
}
