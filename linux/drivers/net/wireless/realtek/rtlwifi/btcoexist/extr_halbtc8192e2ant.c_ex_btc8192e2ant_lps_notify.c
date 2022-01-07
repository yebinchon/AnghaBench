
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {int under_lps; } ;


 scalar_t__ BTC_LPS_DISABLE ;
 scalar_t__ BTC_LPS_ENABLE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 TYPE_1__* coex_sta ;

void ex_btc8192e2ant_lps_notify(struct btc_coexist *btcoexist, u8 type)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 if (BTC_LPS_ENABLE == type) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], LPS ENABLE notify\n");
  coex_sta->under_lps = 1;
 } else if (BTC_LPS_DISABLE == type) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], LPS DISABLE notify\n");
  coex_sta->under_lps = 0;
 }
}
