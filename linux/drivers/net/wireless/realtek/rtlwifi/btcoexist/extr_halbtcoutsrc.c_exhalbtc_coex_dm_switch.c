
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct TYPE_4__ {int btdm_ant_num; } ;
struct TYPE_3__ {int cnt_coex_dm_switch; } ;
struct btc_coexist {int stop_coex_dm; TYPE_2__ board_info; struct rtl_priv* adapter; TYPE_1__ statistics; } ;


 int BT_COEX_ANT_TYPE_DETECTED ;
 scalar_t__ IS_HARDWARE_TYPE_8723B (struct rtl_priv*) ;
 int ex_btc8723b1ant_coex_dm_reset (struct btc_coexist*) ;
 int ex_btc8723b2ant_init_coex_dm (struct btc_coexist*) ;
 int ex_btc8723b2ant_init_hwconfig (struct btc_coexist*) ;
 int exhalbtc_set_ant_num (struct rtl_priv*,int ,int) ;
 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;
 int halbtc_leave_low_power (struct btc_coexist*) ;
 int halbtc_normal_low_power (struct btc_coexist*) ;

void exhalbtc_coex_dm_switch(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;
 btcoexist->statistics.cnt_coex_dm_switch++;

 halbtc_leave_low_power(btcoexist);

 if (IS_HARDWARE_TYPE_8723B(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 1) {
   btcoexist->stop_coex_dm = 1;
   ex_btc8723b1ant_coex_dm_reset(btcoexist);
   exhalbtc_set_ant_num(rtlpriv,
          BT_COEX_ANT_TYPE_DETECTED, 2);
   ex_btc8723b2ant_init_hwconfig(btcoexist);
   ex_btc8723b2ant_init_coex_dm(btcoexist);
   btcoexist->stop_coex_dm = 0;
  }
 }

 halbtc_normal_low_power(btcoexist);
}
