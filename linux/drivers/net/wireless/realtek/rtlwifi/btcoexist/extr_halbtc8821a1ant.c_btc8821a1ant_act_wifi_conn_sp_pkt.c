
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_bt_link_info {scalar_t__ pan_exist; scalar_t__ a2dp_exist; scalar_t__ hid_exist; scalar_t__ sco_exist; } ;
struct btc_coexist {struct btc_bt_link_info bt_link_info; } ;


 int BTC_PS_WIFI_NATIVE ;
 int NORMAL_EXEC ;
 int btc8821a1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8821a1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8821a1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;

__attribute__((used)) static void btc8821a1ant_act_wifi_conn_sp_pkt(struct btc_coexist *btcoexist)
{
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;

 btc8821a1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
          0x0, 0x0);


 if ((bt_link_info->sco_exist) || (bt_link_info->hid_exist) ||
     (bt_link_info->a2dp_exist)) {
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 32);
  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 4);
 }

 if ((bt_link_info->hid_exist) && (bt_link_info->a2dp_exist)) {
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 14);
  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 1);
 } else if (bt_link_info->pan_exist) {
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 20);
  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 4);
 } else {
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 8);
  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 2);
 }
}
