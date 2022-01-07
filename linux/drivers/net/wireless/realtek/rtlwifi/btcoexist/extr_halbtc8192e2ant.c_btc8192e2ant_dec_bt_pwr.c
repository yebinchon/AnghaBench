
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {char* cur_dec_bt_pwr; char* pre_dec_bt_pwr; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*,char*) ;
 int btc8192e2ant_set_fw_dec_bt_pwr (struct btc_coexist*,char*) ;
 TYPE_1__* coex_dm ;

__attribute__((used)) static void btc8192e2ant_dec_bt_pwr(struct btc_coexist *btcoexist,
        bool force_exec, u8 dec_bt_pwr_lvl)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], %s Dec BT power level = %d\n",
   force_exec ? "force to" : "", dec_bt_pwr_lvl);
 coex_dm->cur_dec_bt_pwr = dec_bt_pwr_lvl;

 if (!force_exec) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], preBtDecPwrLvl=%d, curBtDecPwrLvl=%d\n",
    coex_dm->pre_dec_bt_pwr, coex_dm->cur_dec_bt_pwr);
 }
 btc8192e2ant_set_fw_dec_bt_pwr(btcoexist, coex_dm->cur_dec_bt_pwr);

 coex_dm->pre_dec_bt_pwr = coex_dm->cur_dec_bt_pwr;
}
