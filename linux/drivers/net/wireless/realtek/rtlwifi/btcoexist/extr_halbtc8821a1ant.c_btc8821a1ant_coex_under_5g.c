
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int dummy; } ;


 int BTC_PS_WIFI_NATIVE ;
 int NORMAL_EXEC ;
 int btc8821a1ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int btc8821a1ant_ignore_wlan_act (struct btc_coexist*,int ,int) ;
 int btc8821a1ant_limited_rx (struct btc_coexist*,int ,int,int,int) ;
 int btc8821a1ant_limited_tx (struct btc_coexist*,int ,int ,int ,int ,int ) ;
 int btc8821a1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8821a1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;

__attribute__((used)) static void btc8821a1ant_coex_under_5g(struct btc_coexist *btcoexist)
{
 btc8821a1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
          0x0, 0x0);
 btc8821a1ant_ignore_wlan_act(btcoexist, NORMAL_EXEC, 1);

 btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 10);

 btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);

 btc8821a1ant_limited_tx(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);

 btc8821a1ant_limited_rx(btcoexist, NORMAL_EXEC, 0, 0, 5);
}
