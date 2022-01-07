
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int dummy; } ;


 int BTC_PS_WIFI_NATIVE ;
 int NORMAL_EXEC ;
 int btc8821a1ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int btc8821a1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8821a1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;

__attribute__((used)) static
void btc8821a1ant_action_wifi_not_connected(struct btc_coexist *btcoexist)
{

 btc8821a1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);


 btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 8);
 btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);
}
