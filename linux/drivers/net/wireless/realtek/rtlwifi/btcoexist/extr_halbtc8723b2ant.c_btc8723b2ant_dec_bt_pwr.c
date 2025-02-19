
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {scalar_t__ cur_dec_bt_pwr_lvl; scalar_t__ pre_dec_bt_pwr_lvl; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__,...) ;
 int btc8723b2ant_set_fw_dec_bt_pwr (struct btc_coexist*,scalar_t__) ;
 TYPE_1__* coex_dm ;

__attribute__((used)) static void btc8723b2ant_dec_bt_pwr(struct btc_coexist *btcoexist,
        bool force_exec, u8 dec_bt_pwr_lvl)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], Dec BT power level = %u\n", dec_bt_pwr_lvl);
 coex_dm->cur_dec_bt_pwr_lvl = dec_bt_pwr_lvl;

 if (!force_exec) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], PreDecBtPwrLvl=%d, CurDecBtPwrLvl=%d\n",
       coex_dm->pre_dec_bt_pwr_lvl,
       coex_dm->cur_dec_bt_pwr_lvl);

  if (coex_dm->pre_dec_bt_pwr_lvl == coex_dm->cur_dec_bt_pwr_lvl)
   return;
 }
 btc8723b2ant_set_fw_dec_bt_pwr(btcoexist, coex_dm->cur_dec_bt_pwr_lvl);

 coex_dm->pre_dec_bt_pwr_lvl = coex_dm->cur_dec_bt_pwr_lvl;
}
