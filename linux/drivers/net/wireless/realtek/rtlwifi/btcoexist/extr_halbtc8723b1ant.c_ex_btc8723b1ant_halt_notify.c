
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct btc_coexist {int stop_coex_dm; struct rtl_priv* adapter; } ;


 int BTC_ANT_PATH_BT ;
 int BTC_MEDIA_DISCONNECT ;
 int BTC_PS_WIFI_NATIVE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int ex_btc8723b1ant_media_status_notify (struct btc_coexist*,int ) ;
 int halbtc8723b1ant_ignore_wlan_act (struct btc_coexist*,int ,int) ;
 int halbtc8723b1ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int halbtc8723b1ant_ps_tdma (struct btc_coexist*,int ,int,int ) ;
 int halbtc8723b1ant_set_ant_path (struct btc_coexist*,int ,int ,int,int) ;

void ex_btc8723b1ant_halt_notify(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD, "[BTCoex], Halt notify\n");

 btcoexist->stop_coex_dm = 1;

 halbtc8723b1ant_set_ant_path(btcoexist, BTC_ANT_PATH_BT, FORCE_EXEC,
         0, 1);

 halbtc8723b1ant_ignore_wlan_act(btcoexist, FORCE_EXEC, 1);

 halbtc8723b1ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
      0x0, 0x0);
 halbtc8723b1ant_ps_tdma(btcoexist, FORCE_EXEC, 0, 0);

 ex_btc8723b1ant_media_status_notify(btcoexist, BTC_MEDIA_DISCONNECT);

 btcoexist->stop_coex_dm = 1;
}
