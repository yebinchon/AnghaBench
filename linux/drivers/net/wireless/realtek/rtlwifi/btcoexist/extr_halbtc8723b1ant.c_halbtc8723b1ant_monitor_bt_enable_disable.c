
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int high_priority_tx; int high_priority_rx; int low_priority_tx; int low_priority_rx; int bt_disabled; } ;


 int BTC_SET_ACT_LEAVE_LPS ;
 int BTC_SET_ACT_NORMAL_LPS ;
 int BTC_SET_BL_BT_DISABLE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*,char*) ;
 TYPE_1__* coex_sta ;
 int halbtc8723b1ant_action_wifi_only (struct btc_coexist*) ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_monitor_bt_enable_disable(struct btc_coexist
            *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 static u32 bt_disable_cnt;
 bool bt_active = 1, bt_disabled = 0;

 if (coex_sta->high_priority_tx == 0 &&
     coex_sta->high_priority_rx == 0 && coex_sta->low_priority_tx == 0 &&
     coex_sta->low_priority_rx == 0)
  bt_active = 0;
 if (coex_sta->high_priority_tx == 0xffff &&
     coex_sta->high_priority_rx == 0xffff &&
     coex_sta->low_priority_tx == 0xffff &&
     coex_sta->low_priority_rx == 0xffff)
  bt_active = 0;
 if (bt_active) {
  bt_disable_cnt = 0;
  bt_disabled = 0;
 } else {
  bt_disable_cnt++;
  if (bt_disable_cnt >= 2)
   bt_disabled = 1;
 }
 if (coex_sta->bt_disabled != bt_disabled) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], BT is from %s to %s!!\n",
    (coex_sta->bt_disabled ? "disabled" : "enabled"),
    (bt_disabled ? "disabled" : "enabled"));

  coex_sta->bt_disabled = bt_disabled;
  btcoexist->btc_set(btcoexist, BTC_SET_BL_BT_DISABLE,
       &bt_disabled);
  if (bt_disabled) {
   halbtc8723b1ant_action_wifi_only(btcoexist);
   btcoexist->btc_set(btcoexist, BTC_SET_ACT_LEAVE_LPS,
        ((void*)0));
   btcoexist->btc_set(btcoexist, BTC_SET_ACT_NORMAL_LPS,
        ((void*)0));
  }
 }
}
