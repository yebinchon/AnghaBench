
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {int cur_dac_swing_on; int pre_dac_swing_on; int cur_dac_swing_lvl; int pre_dac_swing_lvl; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int btc8192e2ant_set_sw_full_swing (struct btc_coexist*,int,int ) ;
 TYPE_1__* coex_dm ;
 int mdelay (int) ;

__attribute__((used)) static void btc8192e2ant_dac_swing(struct btc_coexist *btcoexist,
       bool force_exec, bool dac_swing_on,
       u32 dac_swing_lvl)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], %s turn DacSwing=%s, dac_swing_lvl = 0x%x\n",
   (force_exec ? "force to" : ""),
   ((dac_swing_on) ? "ON" : "OFF"), dac_swing_lvl);
 coex_dm->cur_dac_swing_on = dac_swing_on;
 coex_dm->cur_dac_swing_lvl = dac_swing_lvl;

 if (!force_exec) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], bPreDacSwingOn=%d, preDacSwingLvl = 0x%x, ",
    coex_dm->pre_dac_swing_on,
    coex_dm->pre_dac_swing_lvl);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "bCurDacSwingOn=%d, curDacSwingLvl = 0x%x\n",
    coex_dm->cur_dac_swing_on,
    coex_dm->cur_dac_swing_lvl);

  if ((coex_dm->pre_dac_swing_on == coex_dm->cur_dac_swing_on) &&
      (coex_dm->pre_dac_swing_lvl == coex_dm->cur_dac_swing_lvl))
   return;
 }
 mdelay(30);
 btc8192e2ant_set_sw_full_swing(btcoexist, dac_swing_on, dac_swing_lvl);

 coex_dm->pre_dac_swing_on = coex_dm->cur_dac_swing_on;
 coex_dm->pre_dac_swing_lvl = coex_dm->cur_dac_swing_lvl;
}
