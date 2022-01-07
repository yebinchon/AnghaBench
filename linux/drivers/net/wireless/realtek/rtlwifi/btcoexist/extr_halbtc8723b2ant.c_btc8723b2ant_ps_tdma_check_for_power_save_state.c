
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;} ;


 int BTC_GET_U1_LPS_MODE ;
 int NORMAL_EXEC ;
 int btc8723b2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int stub1 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void btc8723b2ant_ps_tdma_check_for_power_save_state(
  struct btc_coexist *btcoexist, bool new_ps_state)
{
 u8 lps_mode = 0x0;

 btcoexist->btc_get(btcoexist, BTC_GET_U1_LPS_MODE, &lps_mode);

 if (lps_mode) {

  if (new_ps_state) {

  } else {

   btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 1);
  }
 } else {

  if (new_ps_state) {

   btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 1);
  } else {

  }
 }
}
