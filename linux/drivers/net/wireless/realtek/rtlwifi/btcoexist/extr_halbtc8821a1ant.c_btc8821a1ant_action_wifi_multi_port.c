
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btc_bt_link_info {scalar_t__ pan_exist; scalar_t__ a2dp_exist; } ;
struct btc_coexist {struct btc_bt_link_info bt_link_info; } ;
struct TYPE_2__ {scalar_t__ bt_status; } ;


 int BTC_PS_WIFI_NATIVE ;
 scalar_t__ BT_8821A_1ANT_BT_STATUS_ACL_BUSY ;
 scalar_t__ BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY ;
 scalar_t__ BT_8821A_1ANT_BT_STATUS_SCO_BUSY ;
 int BT_8821A_1ANT_WIFI_STATUS_CONNECTED_SCAN ;
 int NORMAL_EXEC ;
 int btc8821a1ant_act_bt_sco_hid_only_busy (struct btc_coexist*,int ) ;
 int btc8821a1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8821a1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8821a1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 TYPE_1__* coex_dm ;

__attribute__((used)) static
void btc8821a1ant_action_wifi_multi_port(struct btc_coexist *btcoexist)
{
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;

 btc8821a1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);

 if (coex_dm->bt_status == BT_8821A_1ANT_BT_STATUS_ACL_BUSY) {
  if (bt_link_info->a2dp_exist) {
   btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 14);
   btc8821a1ant_coex_table_with_type(btcoexist,
         NORMAL_EXEC, 1);
  } else if (bt_link_info->a2dp_exist &&
      bt_link_info->pan_exist) {
   btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 8);
   btc8821a1ant_coex_table_with_type(btcoexist,
         NORMAL_EXEC, 4);
  } else {
   btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 20);
   btc8821a1ant_coex_table_with_type(btcoexist,
         NORMAL_EXEC, 4);
  }
 } else if ((coex_dm->bt_status == BT_8821A_1ANT_BT_STATUS_SCO_BUSY) ||
     (BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY ==
      coex_dm->bt_status)) {
  btc8821a1ant_act_bt_sco_hid_only_busy(btcoexist,
    BT_8821A_1ANT_WIFI_STATUS_CONNECTED_SCAN);
 } else {
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 8);
  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 2);
 }
}
