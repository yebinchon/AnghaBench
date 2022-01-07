
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int auto_report_1ant; } ;


 int btc8821a1ant_init_hw_config (struct btc_coexist*,int,int) ;

void ex_btc8821a1ant_init_hwconfig(struct btc_coexist *btcoexist, bool wifionly)
{
 btc8821a1ant_init_hw_config(btcoexist, 1, wifionly);
 btcoexist->auto_report_1ant = 1;
}
