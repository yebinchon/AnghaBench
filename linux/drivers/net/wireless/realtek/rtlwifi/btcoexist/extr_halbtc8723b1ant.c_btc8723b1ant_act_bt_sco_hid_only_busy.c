
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_bt_link_info {scalar_t__ sco_exist; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct btc_bt_link_info bt_link_info; } ;


 int BTC_GET_BL_WIFI_CONNECTED ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int halbtc8723b1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int stub1 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void btc8723b1ant_act_bt_sco_hid_only_busy(struct btc_coexist *btcoexist,
        u8 wifi_status)
{
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
 bool wifi_connected = 0;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
      &wifi_connected);


 if (bt_link_info->sco_exist) {
  halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 5);
  halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 5);
 } else {

  halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 6);
  halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 5);
 }
}
