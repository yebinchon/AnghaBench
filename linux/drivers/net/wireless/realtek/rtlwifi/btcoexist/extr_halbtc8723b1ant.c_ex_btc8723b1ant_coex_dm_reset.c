
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int halbtc8723b1ant_init_coex_dm (struct btc_coexist*) ;
 int halbtc8723b1ant_init_hw_config (struct btc_coexist*,int,int) ;

void ex_btc8723b1ant_coex_dm_reset(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], *****************Coex DM Reset****************\n");

 halbtc8723b1ant_init_hw_config(btcoexist, 0, 0);
 halbtc8723b1ant_init_coex_dm(btcoexist);
}
