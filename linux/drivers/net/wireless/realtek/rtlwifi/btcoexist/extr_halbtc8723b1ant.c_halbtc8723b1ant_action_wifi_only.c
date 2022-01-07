
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int dummy; } ;


 int BTC_ANT_PATH_PTA ;
 int FORCE_EXEC ;
 int halbtc8723b1ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int halbtc8723b1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int halbtc8723b1ant_set_ant_path (struct btc_coexist*,int ,int ,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_action_wifi_only(struct btc_coexist *btcoexist)
{
 halbtc8723b1ant_coex_table_with_type(btcoexist, FORCE_EXEC, 0);
 halbtc8723b1ant_ps_tdma(btcoexist, FORCE_EXEC, 0, 8);
 halbtc8723b1ant_set_ant_path(btcoexist, BTC_ANT_PATH_PTA,
         FORCE_EXEC, 0, 0);
}
