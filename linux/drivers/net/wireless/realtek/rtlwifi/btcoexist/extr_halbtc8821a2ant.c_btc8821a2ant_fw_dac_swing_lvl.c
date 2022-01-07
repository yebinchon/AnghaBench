
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {char* cur_fw_dac_swing_lvl; char* pre_fw_dac_swing_lvl; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*,char*) ;
 int btc8821a2ant_set_fw_dac_swing_lvl (struct btc_coexist*,char*) ;
 TYPE_1__* coex_dm ;

__attribute__((used)) static void btc8821a2ant_fw_dac_swing_lvl(struct btc_coexist *btcoexist,
       bool force_exec, u8 fw_dac_swing_lvl)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], %s set FW Dac Swing level = %d\n",
   (force_exec ? "force to" : ""), fw_dac_swing_lvl);
 coex_dm->cur_fw_dac_swing_lvl = fw_dac_swing_lvl;

 if (!force_exec) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], pre_fw_dac_swing_lvl = %d, cur_fw_dac_swing_lvl = %d\n",
    coex_dm->pre_fw_dac_swing_lvl,
    coex_dm->cur_fw_dac_swing_lvl);

  if (coex_dm->pre_fw_dac_swing_lvl ==
      coex_dm->cur_fw_dac_swing_lvl)
   return;
 }

 btc8821a2ant_set_fw_dac_swing_lvl(btcoexist,
       coex_dm->cur_fw_dac_swing_lvl);

 coex_dm->pre_fw_dac_swing_lvl = coex_dm->cur_fw_dac_swing_lvl;
}
