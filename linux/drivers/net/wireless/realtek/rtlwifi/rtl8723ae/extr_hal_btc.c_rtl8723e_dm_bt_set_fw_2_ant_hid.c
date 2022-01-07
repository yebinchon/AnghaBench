
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int fw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*,char*,int ) ;
 int rtl8723e_fill_h2c_cmd (struct ieee80211_hw*,int,int,int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723e_dm_bt_set_fw_2_ant_hid(struct ieee80211_hw *hw,
         bool b_enable, bool b_dac_swing_on)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 h2c_parameter[1] = {0};

 if (b_enable) {
  h2c_parameter[0] |= BIT(0);
  rtlpriv->btcoexist.fw_coexist_all_off = 0;
 }
 if (b_dac_swing_on)
  h2c_parameter[0] |= BIT(1);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
   "[BTCoex], turn 2-Ant+HID mode %s, DACSwing:%s, write 0x15=0x%x\n",
   (b_enable ? "ON!!" : "OFF!!"), (b_dac_swing_on ? "ON" : "OFF"),
   h2c_parameter[0]);

 rtl8723e_fill_h2c_cmd(hw, 0x15, 1, h2c_parameter);
}
