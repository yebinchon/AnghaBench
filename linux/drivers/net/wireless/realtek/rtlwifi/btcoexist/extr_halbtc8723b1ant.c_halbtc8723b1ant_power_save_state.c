
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int*) ;} ;
struct TYPE_2__ {int force_lps_on; } ;





 int BTC_SET_ACT_DISABLE_LOW_POWER ;
 int BTC_SET_ACT_ENTER_LPS ;
 int BTC_SET_ACT_LEAVE_LPS ;
 int BTC_SET_ACT_NORMAL_LPS ;
 int NORMAL_EXEC ;
 TYPE_1__* coex_sta ;
 int halbtc8723b1ant_lps_rpwm (struct btc_coexist*,int ,int,int) ;
 int halbtc8723b1ant_ps_tdma_chk_pwr_save (struct btc_coexist*,int) ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;
 int stub5 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_power_save_state(struct btc_coexist *btcoexist,
          u8 ps_type, u8 lps_val,
          u8 rpwm_val)
{
 bool low_pwr_disable = 0;

 switch (ps_type) {
 case 128:

  low_pwr_disable = 0;
  btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
       &low_pwr_disable);
  btcoexist->btc_set(btcoexist, BTC_SET_ACT_NORMAL_LPS, ((void*)0));
  coex_sta->force_lps_on = 0;
  break;
 case 129:
  halbtc8723b1ant_ps_tdma_chk_pwr_save(btcoexist, 1);
  halbtc8723b1ant_lps_rpwm(btcoexist, NORMAL_EXEC, lps_val,
      rpwm_val);

  low_pwr_disable = 1;
  btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
       &low_pwr_disable);

  btcoexist->btc_set(btcoexist, BTC_SET_ACT_ENTER_LPS, ((void*)0));
  coex_sta->force_lps_on = 1;
  break;
 case 130:
  halbtc8723b1ant_ps_tdma_chk_pwr_save(btcoexist, 0);
  btcoexist->btc_set(btcoexist, BTC_SET_ACT_LEAVE_LPS, ((void*)0));
  coex_sta->force_lps_on = 0;
  break;
 default:
  break;
 }
}
