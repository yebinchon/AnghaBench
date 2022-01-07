
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 int BTC_MEDIA_DISCONNECT ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8821a2ant_ignore_wlan_act (struct btc_coexist*,int ,int) ;
 int btc8821a2ant_wifi_off_hw_cfg (struct btc_coexist*) ;
 int ex_btc8821a2ant_media_status_notify (struct btc_coexist*,int ) ;

void ex_btc8821a2ant_halt_notify(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], Halt notify\n");

 btc8821a2ant_wifi_off_hw_cfg(btcoexist);
 btc8821a2ant_ignore_wlan_act(btcoexist, FORCE_EXEC, 1);
 ex_btc8821a2ant_media_status_notify(btcoexist, BTC_MEDIA_DISCONNECT);
}
