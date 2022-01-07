
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int*) ;struct rtl_priv* adapter; } ;


 int BIT0 ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*) ;
 int stub1 (struct btc_coexist*,int,int,int*) ;

__attribute__((used)) static void btc8821a2ant_set_sw_penalty_tx_rate_adaptive(
  struct btc_coexist *btcoexist, bool low_penalty_ra)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 h2c_parameter[6] = {0};

 h2c_parameter[0] = 0x6;

 if (low_penalty_ra) {
  h2c_parameter[1] |= BIT0;

  h2c_parameter[2] = 0x00;

  h2c_parameter[3] = 0xf5;

  h2c_parameter[4] = 0xa0;

  h2c_parameter[5] = 0xa0;
 }

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], set WiFi Low-Penalty Retry: %s",
   (low_penalty_ra ? "ON!!" : "OFF!!"));

 btcoexist->btc_fill_h2c(btcoexist, 0x69, 6, h2c_parameter);
}
