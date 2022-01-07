
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_coexist {int dummy; } ;


 int NORMAL_EXEC ;
 int btc8821a1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8821a1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;

__attribute__((used)) static void btc8821a1ant_act_bt_sco_hid_only_busy(struct btc_coexist *btcoexist,
        u8 wifi_status)
{

 btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 5);

 btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 1);
}
