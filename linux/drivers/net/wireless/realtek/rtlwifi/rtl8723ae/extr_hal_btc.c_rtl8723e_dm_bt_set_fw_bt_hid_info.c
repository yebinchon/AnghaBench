
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int fw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int ) ;
 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int rtl8723e_fill_h2c_cmd (struct ieee80211_hw*,int,int,int*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723e_dm_bt_set_fw_bt_hid_info(struct ieee80211_hw *hw,
           bool b_enable)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 h2c_parameter[1] = {0};
 h2c_parameter[0] = 0;

 if (b_enable) {
  h2c_parameter[0] |= BIT(0);
  rtlpriv->btcoexist.fw_coexist_all_off = 0;
 }
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
  "[BTCoex], Set BT HID information=0x%x\n", b_enable);
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
  "[BTCoex], write 0x24=0x%x\n", h2c_parameter[0]);

 rtl8723e_fill_h2c_cmd(hw, 0x24, 1, h2c_parameter);
}
