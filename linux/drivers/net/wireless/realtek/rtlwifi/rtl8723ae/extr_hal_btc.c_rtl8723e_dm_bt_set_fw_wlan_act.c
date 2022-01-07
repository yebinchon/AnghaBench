
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,...) ;
 int rtl8723e_fill_h2c_cmd (struct ieee80211_hw*,int,int,int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723e_dm_bt_set_fw_wlan_act(struct ieee80211_hw *hw,
        u8 wlan_act_hi, u8 wlan_act_lo)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 h2c_parameter_hi[1] = {0};
 u8 h2c_parameter_lo[1] = {0};
 h2c_parameter_hi[0] = wlan_act_hi;
 h2c_parameter_lo[0] = wlan_act_lo;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
  "[BTCoex], Set WLAN_ACT Hi:Lo=0x%x/0x%x\n",
  wlan_act_hi, wlan_act_lo);
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
  "[BTCoex], write 0x22=0x%x\n", h2c_parameter_hi[0]);
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
  "[BTCoex], write 0x11=0x%x\n", h2c_parameter_lo[0]);


 rtl8723e_fill_h2c_cmd(hw, 0x22, 1, h2c_parameter_hi);

 rtl8723e_fill_h2c_cmd(hw, 0x11, 1, h2c_parameter_lo);
}
