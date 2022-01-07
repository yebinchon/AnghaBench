
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct rtl_priv* adapter; } ;
struct TYPE_2__ {int under_ips; } ;


 int BTC_ANT_PATH_BT ;
 scalar_t__ BTC_IPS_ENTER ;
 scalar_t__ BTC_IPS_LEAVE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 TYPE_1__* coex_sta ;
 int halbtc8723b1ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int halbtc8723b1ant_init_coex_dm (struct btc_coexist*) ;
 int halbtc8723b1ant_init_hw_config (struct btc_coexist*,int,int) ;
 int halbtc8723b1ant_ps_tdma (struct btc_coexist*,int ,int,int ) ;
 int halbtc8723b1ant_query_bt_info (struct btc_coexist*) ;
 int halbtc8723b1ant_set_ant_path (struct btc_coexist*,int ,int ,int,int) ;

void ex_btc8723b1ant_ips_notify(struct btc_coexist *btcoexist, u8 type)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 if (btcoexist->manual_control || btcoexist->stop_coex_dm)
  return;

 if (BTC_IPS_ENTER == type) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], IPS ENTER notify\n");
  coex_sta->under_ips = 1;

  halbtc8723b1ant_set_ant_path(btcoexist, BTC_ANT_PATH_BT,
          FORCE_EXEC, 0, 1);

  halbtc8723b1ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 0);
  halbtc8723b1ant_coex_table_with_type(btcoexist,
           NORMAL_EXEC, 0);
 } else if (BTC_IPS_LEAVE == type) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], IPS LEAVE notify\n");
  coex_sta->under_ips = 0;

  halbtc8723b1ant_init_hw_config(btcoexist, 0, 0);
  halbtc8723b1ant_init_coex_dm(btcoexist);
  halbtc8723b1ant_query_bt_info(btcoexist);
 }
}
