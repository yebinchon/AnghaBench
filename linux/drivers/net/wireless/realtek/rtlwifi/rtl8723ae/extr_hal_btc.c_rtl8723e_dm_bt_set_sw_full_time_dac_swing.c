
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int rtl8723_phy_set_bb_reg (struct ieee80211_hw*,int,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723e_dm_bt_set_sw_full_time_dac_swing(
  struct ieee80211_hw *hw,
  bool sw_dac_swing_on,
  u32 sw_dac_swing_lvl)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (sw_dac_swing_on) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
    "[BTCoex], SwDacSwing = 0x%x\n", sw_dac_swing_lvl);
  rtl8723_phy_set_bb_reg(hw, 0x880, 0xff000000,
           sw_dac_swing_lvl);
  rtlpriv->btcoexist.sw_coexist_all_off = 0;
 } else {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
    "[BTCoex], SwDacSwing Off!\n");
  rtl8723_phy_set_bb_reg(hw, 0x880, 0xff000000, 0xc0);
 }
}
