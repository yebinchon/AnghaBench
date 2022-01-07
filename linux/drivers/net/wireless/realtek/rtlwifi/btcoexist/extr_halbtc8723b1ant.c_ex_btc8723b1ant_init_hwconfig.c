
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int stop_coex_dm; } ;


 int halbtc8723b1ant_init_hw_config (struct btc_coexist*,int,int) ;

void ex_btc8723b1ant_init_hwconfig(struct btc_coexist *btcoexist,
       bool wifi_only)
{
 halbtc8723b1ant_init_hw_config(btcoexist, 1, wifi_only);
 btcoexist->stop_coex_dm = 0;
}
