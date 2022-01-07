
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int dummy; } ;


 int NORMAL_EXEC ;
 int halbtc8723b1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int halbtc8723b1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_action_hs(struct btc_coexist *btcoexist)
{
 halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 5);
 halbtc8723b1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 2);
}
