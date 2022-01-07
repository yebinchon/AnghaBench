
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int dummy; } ;


 int NORMAL_EXEC ;
 int btc8821a2ant_coex_all_off (struct btc_coexist*) ;
 int btc8821a2ant_ignore_wlan_act (struct btc_coexist*,int ,int) ;

__attribute__((used)) static void btc8821a2ant_coex_under_5g(struct btc_coexist *btcoexist)
{
 btc8821a2ant_coex_all_off(btcoexist);
 btc8821a2ant_ignore_wlan_act(btcoexist, NORMAL_EXEC, 1);
}
