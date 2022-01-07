
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int dummy; } ;


 int BTC_ANT_PATH_PTA ;
 int BTC_PS_WIFI_NATIVE ;
 int FORCE_EXEC ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int halbtc8723b1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int halbtc8723b1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int halbtc8723b1ant_set_ant_path (struct btc_coexist*,int ,int ,int,int) ;

__attribute__((used)) static void btc8723b1ant_action_wifi_not_conn(struct btc_coexist *btcoexist)
{

 halbtc8723b1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
      0x0, 0x0);


 halbtc8723b1ant_ps_tdma(btcoexist, FORCE_EXEC, 0, 8);
 halbtc8723b1ant_set_ant_path(btcoexist, BTC_ANT_PATH_PTA, NORMAL_EXEC,
         0, 0);
 halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);
}
