
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {int under_ips; int under_lps; } ;


 scalar_t__ BTC_WIFI_PNP_SLEEP ;
 scalar_t__ BTC_WIFI_PNP_WAKE_UP ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8723b2ant_init_coex_dm (struct btc_coexist*) ;
 int btc8723b2ant_query_bt_info (struct btc_coexist*) ;
 TYPE_1__* coex_sta ;
 int ex_btc8723b2ant_init_hwconfig (struct btc_coexist*) ;

void ex_btc8723b2ant_pnp_notify(struct btc_coexist *btcoexist, u8 pnp_state)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD, "[BTCoex], Pnp notify\n");

 if (pnp_state == BTC_WIFI_PNP_SLEEP) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Pnp notify to SLEEP\n");







  coex_sta->under_ips = 0;
  coex_sta->under_lps = 0;
 } else if (pnp_state == BTC_WIFI_PNP_WAKE_UP) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Pnp notify to WAKE UP\n");
  ex_btc8723b2ant_init_hwconfig(btcoexist);
  btc8723b2ant_init_coex_dm(btcoexist);
  btc8723b2ant_query_bt_info(btcoexist);
 }
}
