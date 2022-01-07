
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {int cur_ignore_wlan_act; int pre_ignore_wlan_act; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int btc8192e2ant_set_fw_ignore_wlan_act (struct btc_coexist*,int) ;
 TYPE_1__* coex_dm ;

__attribute__((used)) static void btc8192e2ant_ignore_wlan_act(struct btc_coexist *btcoexist,
      bool force_exec, bool enable)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], %s turn Ignore WlanAct %s\n",
   (force_exec ? "force to" : ""), (enable ? "ON" : "OFF"));
 coex_dm->cur_ignore_wlan_act = enable;

 if (!force_exec) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], bPreIgnoreWlanAct = %d ",
    coex_dm->pre_ignore_wlan_act);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "bCurIgnoreWlanAct = %d!!\n",
    coex_dm->cur_ignore_wlan_act);

  if (coex_dm->pre_ignore_wlan_act ==
      coex_dm->cur_ignore_wlan_act)
   return;
 }
 btc8192e2ant_set_fw_ignore_wlan_act(btcoexist, enable);

 coex_dm->pre_ignore_wlan_act = coex_dm->cur_ignore_wlan_act;
}
