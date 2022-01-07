
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_bt_link_info {int slave_role; } ;
struct btc_coexist {int (* btc_read_4byte ) (struct btc_coexist*,int) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;struct btc_bt_link_info bt_link_info; struct rtl_priv* adapter; } ;
struct TYPE_2__ {int high_priority_tx; int high_priority_rx; int low_priority_tx; int low_priority_rx; int under_ips; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int MASKHWORD ;
 int MASKLWORD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int,int,int,int) ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int) ;
 int stub2 (struct btc_coexist*,int) ;
 int stub3 (struct btc_coexist*,int,int) ;

__attribute__((used)) static void btc8821a2ant_monitor_bt_ctr(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
 u32 reg_hp_txrx, reg_lp_txrx, u4tmp;
 u32 reg_hp_tx = 0, reg_hp_rx = 0, reg_lp_tx = 0, reg_lp_rx = 0;

 reg_hp_txrx = 0x770;
 reg_lp_txrx = 0x774;

 u4tmp = btcoexist->btc_read_4byte(btcoexist, reg_hp_txrx);
 reg_hp_tx = u4tmp & MASKLWORD;
 reg_hp_rx = (u4tmp & MASKHWORD) >> 16;

 u4tmp = btcoexist->btc_read_4byte(btcoexist, reg_lp_txrx);
 reg_lp_tx = u4tmp & MASKLWORD;
 reg_lp_rx = (u4tmp & MASKHWORD) >> 16;

 coex_sta->high_priority_tx = reg_hp_tx;
 coex_sta->high_priority_rx = reg_hp_rx;
 coex_sta->low_priority_tx = reg_lp_tx;
 coex_sta->low_priority_rx = reg_lp_rx;

 if ((coex_sta->low_priority_rx >= 950) &&
     (coex_sta->low_priority_rx >= coex_sta->low_priority_tx) &&
     (!coex_sta->under_ips))
  bt_link_info->slave_role = 1;
 else
  bt_link_info->slave_role = 0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], High Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\n",
      reg_hp_txrx, reg_hp_tx, reg_hp_tx, reg_hp_rx, reg_hp_rx);
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], Low Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\n",
   reg_lp_txrx, reg_lp_tx, reg_lp_tx, reg_lp_rx, reg_lp_rx);


 btcoexist->btc_write_1byte(btcoexist, 0x76e, 0xc);
}
