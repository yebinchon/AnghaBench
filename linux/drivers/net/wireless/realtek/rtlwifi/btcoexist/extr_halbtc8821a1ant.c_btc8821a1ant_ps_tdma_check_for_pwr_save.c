
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;} ;


 int BTC_GET_U1_LPS_MODE ;
 int NORMAL_EXEC ;
 int btc8821a1ant_ps_tdma (struct btc_coexist*,int ,int,int ) ;
 int stub1 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void btc8821a1ant_ps_tdma_check_for_pwr_save(struct btc_coexist *btcoex,
          bool new_ps_state)
{
 u8 lps_mode = 0x0;

 btcoex->btc_get(btcoex, BTC_GET_U1_LPS_MODE, &lps_mode);

 if (lps_mode) {

  if (new_ps_state) {

  } else {

   btc8821a1ant_ps_tdma(btcoex, NORMAL_EXEC, 0, 0);
  }
 } else {

  if (new_ps_state) {

   btc8821a1ant_ps_tdma(btcoex, NORMAL_EXEC, 0, 0);
  } else {

  }
 }
}
