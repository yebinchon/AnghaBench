
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct btc_coexist {int stop_coex_dm; struct rtl_priv* adapter; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int halbtc8723b1ant_init_coex_dm (struct btc_coexist*) ;
 int halbtc8723b1ant_query_bt_info (struct btc_coexist*) ;

void ex_btc8723b1ant_init_coex_dm(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], Coex Mechanism Init!!\n");

 btcoexist->stop_coex_dm = 0;

 halbtc8723b1ant_init_coex_dm(btcoexist);

 halbtc8723b1ant_query_bt_info(btcoexist);
}
