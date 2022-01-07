
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int stop_coex_dm; int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int under_ips; int under_lps; } ;


 int BTC_ANT_PATH_BT ;
 int BTC_GET_BL_WIFI_UNDER_5G ;
 int BTC_PS_WIFI_NATIVE ;
 scalar_t__ BTC_WIFI_PNP_SLEEP ;
 scalar_t__ BTC_WIFI_PNP_WAKE_UP ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8821a1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8821a1ant_coex_under_5g (struct btc_coexist*) ;
 int btc8821a1ant_init_coex_dm (struct btc_coexist*) ;
 int btc8821a1ant_init_hw_config (struct btc_coexist*,int,int) ;
 int btc8821a1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8821a1ant_ps_tdma (struct btc_coexist*,int ,int,int ) ;
 int btc8821a1ant_query_bt_info (struct btc_coexist*) ;
 int btc8821a1ant_set_ant_path (struct btc_coexist*,int ,int,int) ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;

void ex_btc8821a1ant_pnp_notify(struct btc_coexist *btcoexist, u8 pnp_state)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 bool wifi_under_5g = 0;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);
 if (wifi_under_5g) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], RunCoexistMechanism(), return for 5G <===\n");
  btc8821a1ant_coex_under_5g(btcoexist);
  return;
 }

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], Pnp notify\n");

 if (BTC_WIFI_PNP_SLEEP == pnp_state) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Pnp notify to SLEEP\n");



  coex_sta->under_ips = 0;
  coex_sta->under_lps = 0;
  btcoexist->stop_coex_dm = 1;
  btc8821a1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
           0x0, 0x0);
  btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 0);
  btc8821a1ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 2);
  btc8821a1ant_set_ant_path(btcoexist, BTC_ANT_PATH_BT, 0,
       1);
 } else if (BTC_WIFI_PNP_WAKE_UP == pnp_state) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Pnp notify to WAKE UP\n");
  btcoexist->stop_coex_dm = 0;
  btc8821a1ant_init_hw_config(btcoexist, 0, 0);
  btc8821a1ant_init_coex_dm(btcoexist);
  btc8821a1ant_query_bt_info(btcoexist);
 }
}
