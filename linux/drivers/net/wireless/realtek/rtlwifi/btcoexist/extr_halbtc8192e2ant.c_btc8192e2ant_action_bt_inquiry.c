
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int*) ;} ;


 int BTC_SET_ACT_DISABLE_LOW_POWER ;
 int NORMAL_EXEC ;
 int btc8192e2ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8192e2ant_dec_bt_pwr (struct btc_coexist*,int ,int ) ;
 int btc8192e2ant_fw_dac_swing_lvl (struct btc_coexist*,int ,int) ;
 int btc8192e2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8192e2ant_sw_mechanism1 (struct btc_coexist*,int,int,int,int) ;
 int btc8192e2ant_sw_mechanism2 (struct btc_coexist*,int,int,int,int) ;
 int btc8192e2ant_switch_ss_type (struct btc_coexist*,int ,int) ;
 int stub1 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void btc8192e2ant_action_bt_inquiry(struct btc_coexist *btcoexist)
{
 bool low_pwr_disable = 1;

 btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
      &low_pwr_disable);

 btc8192e2ant_switch_ss_type(btcoexist, NORMAL_EXEC, 1);

 btc8192e2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 2);
 btc8192e2ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 3);
 btc8192e2ant_fw_dac_swing_lvl(btcoexist, NORMAL_EXEC, 6);
 btc8192e2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

 btc8192e2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
 btc8192e2ant_sw_mechanism2(btcoexist, 0, 0, 0, 0x18);
}
