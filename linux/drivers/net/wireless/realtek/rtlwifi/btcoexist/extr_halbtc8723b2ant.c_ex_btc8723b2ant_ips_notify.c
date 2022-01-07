
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {int under_ips; } ;


 scalar_t__ BTC_IPS_ENTER ;
 scalar_t__ BTC_IPS_LEAVE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8723b2ant_coex_alloff (struct btc_coexist*) ;
 int btc8723b2ant_ignore_wlan_act (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_init_coex_dm (struct btc_coexist*) ;
 int btc8723b2ant_query_bt_info (struct btc_coexist*) ;
 int btc8723b2ant_wifioff_hwcfg (struct btc_coexist*) ;
 TYPE_1__* coex_sta ;
 int ex_btc8723b2ant_init_hwconfig (struct btc_coexist*) ;

void ex_btc8723b2ant_ips_notify(struct btc_coexist *btcoexist, u8 type)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 if (BTC_IPS_ENTER == type) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], IPS ENTER notify\n");
  coex_sta->under_ips = 1;
  btc8723b2ant_wifioff_hwcfg(btcoexist);
  btc8723b2ant_ignore_wlan_act(btcoexist, FORCE_EXEC, 1);
  btc8723b2ant_coex_alloff(btcoexist);
 } else if (BTC_IPS_LEAVE == type) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], IPS LEAVE notify\n");
  coex_sta->under_ips = 0;
  ex_btc8723b2ant_init_hwconfig(btcoexist);
  btc8723b2ant_init_coex_dm(btcoexist);
  btc8723b2ant_query_bt_info(btcoexist);
 }
}
