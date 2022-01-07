
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct btc_coexist {int stop_coex_dm; int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;


 int BTC_ANT_PATH_BT ;
 int BTC_GET_BL_WIFI_UNDER_5G ;
 int BTC_MEDIA_DISCONNECT ;
 int BTC_PS_WIFI_NATIVE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8821a1ant_coex_under_5g (struct btc_coexist*) ;
 int btc8821a1ant_ignore_wlan_act (struct btc_coexist*,int ,int) ;
 int btc8821a1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8821a1ant_ps_tdma (struct btc_coexist*,int ,int,int ) ;
 int btc8821a1ant_set_ant_path (struct btc_coexist*,int ,int,int) ;
 int ex_btc8821a1ant_media_status_notify (struct btc_coexist*,int ) ;
 int stub1 (struct btc_coexist*,int ,int*) ;

void ex_btc8821a1ant_halt_notify(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 bool wifi_under_5g = 0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], Halt notify\n");
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);
 if (wifi_under_5g) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], RunCoexistMechanism(), return for 5G <===\n");
  btc8821a1ant_coex_under_5g(btcoexist);
  return;
 }


 btcoexist->stop_coex_dm = 1;

 btc8821a1ant_set_ant_path(btcoexist, BTC_ANT_PATH_BT, 0, 1);
 btc8821a1ant_ignore_wlan_act(btcoexist, FORCE_EXEC, 1);

 btc8821a1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 btc8821a1ant_ps_tdma(btcoexist, FORCE_EXEC, 0, 0);

 ex_btc8821a1ant_media_status_notify(btcoexist, BTC_MEDIA_DISCONNECT);
}
