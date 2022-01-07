
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_set_rf_reg ) (struct btc_coexist*,int ,int,int,int) ;scalar_t__ initilized; struct rtl_priv* adapter; } ;
struct TYPE_2__ {int bt_rf0x1e_backup; } ;


 int BTC_RF_A ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int ,int,int,int) ;
 int stub2 (struct btc_coexist*,int ,int,int,int) ;

__attribute__((used)) static void btc8192e2ant_set_sw_rf_rx_lpf_corner(struct btc_coexist *btcoexist,
       bool rx_rf_shrink_on)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 if (rx_rf_shrink_on) {

  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Shrink RF Rx LPF corner!!\n");
  btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1e,
       0xfffff, 0xffffc);
 } else {



  if (btcoexist->initilized) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Resume RF Rx LPF corner!!\n");
   btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1e,
        0xfffff,
        coex_dm->bt_rf0x1e_backup);
  }
 }
}
