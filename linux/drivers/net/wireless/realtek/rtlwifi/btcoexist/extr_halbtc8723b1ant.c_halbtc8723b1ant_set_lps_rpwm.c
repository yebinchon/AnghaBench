
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int *) ;} ;


 int BTC_SET_U1_LPS_VAL ;
 int BTC_SET_U1_RPWM_VAL ;
 int stub1 (struct btc_coexist*,int ,int *) ;
 int stub2 (struct btc_coexist*,int ,int *) ;

__attribute__((used)) static void halbtc8723b1ant_set_lps_rpwm(struct btc_coexist *btcoexist,
      u8 lps_val, u8 rpwm_val)
{
 u8 lps = lps_val;
 u8 rpwm = rpwm_val;

 btcoexist->btc_set(btcoexist, BTC_SET_U1_LPS_VAL, &lps);
 btcoexist->btc_set(btcoexist, BTC_SET_U1_RPWM_VAL, &rpwm);
}
