
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btc_bt_link_info {scalar_t__ pan_exist; scalar_t__ hid_exist; scalar_t__ a2dp_exist; scalar_t__ hid_only; scalar_t__ sco_exist; } ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int*) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct btc_bt_link_info bt_link_info; } ;
struct TYPE_2__ {int wifi_is_high_pri_task; } ;


 int BTC_GET_BL_WIFI_AP_MODE_ENABLE ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_PS_WIFI_NATIVE ;
 int BTC_SET_BL_BT_TRAFFIC_BUSY ;
 int NORMAL_EXEC ;
 int btc8821a1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8821a1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8821a1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void btc8821a1ant_action_bt_inquiry(struct btc_coexist *btcoexist)
{
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
 bool wifi_connected = 0;
 bool ap_enable = 0;
 bool wifi_busy = 0, bt_busy = 0;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
      &wifi_connected);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_AP_MODE_ENABLE,
      &ap_enable);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);
 btcoexist->btc_set(btcoexist, BTC_SET_BL_BT_TRAFFIC_BUSY, &bt_busy);

 if (!wifi_connected && !coex_sta->wifi_is_high_pri_task) {
  btc8821a1ant_power_save_state(btcoexist,
           BTC_PS_WIFI_NATIVE, 0x0, 0x0);
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 8);
  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);
 } else if ((bt_link_info->sco_exist) || (bt_link_info->a2dp_exist) ||
     (bt_link_info->hid_only)) {

  btc8821a1ant_power_save_state(btcoexist,
           BTC_PS_WIFI_NATIVE, 0x0, 0x0);
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 32);
  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 4);
 } else if ((bt_link_info->a2dp_exist) && (bt_link_info->hid_exist)) {

  btc8821a1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
           0x0, 0x0);
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 14);

  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 1);
 } else if ((bt_link_info->pan_exist) || (wifi_busy)) {
  btc8821a1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
           0x0, 0x0);
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 20);

  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 4);
 } else {
  btc8821a1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
           0x0, 0x0);
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 8);
  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 7);
 }
}
