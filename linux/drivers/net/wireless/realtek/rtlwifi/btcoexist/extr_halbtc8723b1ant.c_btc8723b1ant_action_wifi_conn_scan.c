
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btc_bt_link_info {scalar_t__ pan_exist; scalar_t__ a2dp_exist; } ;
struct btc_coexist {struct btc_bt_link_info bt_link_info; } ;
struct TYPE_2__ {scalar_t__ bt_status; } ;


 int BTC_ANT_PATH_PTA ;
 int BTC_PS_WIFI_NATIVE ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_BUSY ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_SCO_BUSY ;
 int BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN ;
 int NORMAL_EXEC ;
 int btc8723b1ant_act_bt_sco_hid_only_busy (struct btc_coexist*,int ) ;
 TYPE_1__* coex_dm ;
 int halbtc8723b1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int halbtc8723b1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int halbtc8723b1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int halbtc8723b1ant_set_ant_path (struct btc_coexist*,int ,int ,int,int) ;

__attribute__((used)) static void btc8723b1ant_action_wifi_conn_scan(struct btc_coexist *btcoexist)
{
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;

 halbtc8723b1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
      0x0, 0x0);


 if (coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_ACL_BUSY) {
  if (bt_link_info->a2dp_exist) {
   halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC,
      1, 32);
   halbtc8723b1ant_coex_table_with_type(btcoexist,
            NORMAL_EXEC, 4);
  } else if (bt_link_info->a2dp_exist &&
      bt_link_info->pan_exist) {
   halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC,
      1, 22);
   halbtc8723b1ant_coex_table_with_type(btcoexist,
            NORMAL_EXEC, 4);
  } else {
   halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC,
      1, 20);
   halbtc8723b1ant_coex_table_with_type(btcoexist,
            NORMAL_EXEC, 4);
  }
 } else if (coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_SCO_BUSY ||
     coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY) {
  btc8723b1ant_act_bt_sco_hid_only_busy(btcoexist,
    BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN);
 } else {
  halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 8);
  halbtc8723b1ant_set_ant_path(btcoexist, BTC_ANT_PATH_PTA,
          NORMAL_EXEC, 0, 0);
  halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 2);
 }
}
