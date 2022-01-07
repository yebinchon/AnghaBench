
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 int rtl8723e_fill_h2c_cmd (struct ieee80211_hw*,int,int,int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723e_dm_bt_set_fw_dac_swing_level(struct ieee80211_hw *hw,
        u8 dac_swing_lvl)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 h2c_parameter[1] = {0};
 h2c_parameter[0] = dac_swing_lvl;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
  "[BTCoex], Set Dac Swing Level=0x%x\n", dac_swing_lvl);
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
  "[BTCoex], write 0x29=0x%x\n", h2c_parameter[0]);

 rtl8723e_fill_h2c_cmd(hw, 0x29, 1, h2c_parameter);
}
