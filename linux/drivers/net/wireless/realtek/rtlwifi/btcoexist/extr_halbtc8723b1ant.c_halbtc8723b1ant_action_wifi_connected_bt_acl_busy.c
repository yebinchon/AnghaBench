
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct btc_bt_link_info {int slave_role; scalar_t__ pan_exist; scalar_t__ hid_exist; scalar_t__ pan_only; scalar_t__ a2dp_exist; scalar_t__ a2dp_only; scalar_t__ hid_only; } ;
struct btc_coexist {struct btc_bt_link_info bt_link_info; } ;
struct TYPE_4__ {int auto_tdma_adjust; } ;
struct TYPE_3__ {int low_priority_rx; int under_ips; } ;


 scalar_t__ BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE ;
 int NORMAL_EXEC ;
 int btc8723b1ant_act_bt_sco_hid_only_busy (struct btc_coexist*,scalar_t__) ;
 int btc8723b1ant_tdma_dur_adj_for_acl (struct btc_coexist*,scalar_t__) ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int halbtc8723b1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int halbtc8723b1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_action_wifi_connected_bt_acl_busy(
     struct btc_coexist *btcoexist,
     u8 wifi_status)
{
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;

 if ((coex_sta->low_priority_rx >= 950) && (!coex_sta->under_ips))
  bt_link_info->slave_role = 1;
 else
  bt_link_info->slave_role = 0;

 if (bt_link_info->hid_only) {
  btc8723b1ant_act_bt_sco_hid_only_busy(btcoexist, wifi_status);
  coex_dm->auto_tdma_adjust = 0;
  return;
 } else if (bt_link_info->a2dp_only) {
  if (wifi_status == BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE) {
   halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC,
      1, 32);
   halbtc8723b1ant_coex_table_with_type(btcoexist,
            NORMAL_EXEC, 4);
   coex_dm->auto_tdma_adjust = 0;
  } else {
   btc8723b1ant_tdma_dur_adj_for_acl(btcoexist,
         wifi_status);
   halbtc8723b1ant_coex_table_with_type(btcoexist,
            NORMAL_EXEC, 1);
   coex_dm->auto_tdma_adjust = 1;
  }
 } else if (((bt_link_info->a2dp_exist) && (bt_link_info->pan_exist)) ||
     (bt_link_info->hid_exist && bt_link_info->a2dp_exist &&
      bt_link_info->pan_exist)) {

  halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 13);
  halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 4);
  coex_dm->auto_tdma_adjust = 0;
 } else if (bt_link_info->hid_exist && bt_link_info->a2dp_exist) {

  halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 14);
  coex_dm->auto_tdma_adjust = 0;

  halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 4);
 } else if (bt_link_info->pan_only ||
   (bt_link_info->hid_exist && bt_link_info->pan_exist)) {

  halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 3);
  halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 4);
  coex_dm->auto_tdma_adjust = 0;
 } else {

  halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 33);
  halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 4);
  coex_dm->auto_tdma_adjust = 0;
 }
}
