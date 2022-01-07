
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int fw_coexist_all_off; int balance_on; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*,int,int,int) ;
 int rtl8723e_fill_h2c_cmd (struct ieee80211_hw*,int,int,int*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8723e_dm_bt_balance(struct ieee80211_hw *hw,
       bool balance_on, u8 ms0, u8 ms1)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 h2c_parameter[3] = {0};

 if (balance_on) {
  h2c_parameter[2] = 1;
  h2c_parameter[1] = ms1;
  h2c_parameter[0] = ms0;
  rtlpriv->btcoexist.fw_coexist_all_off = 0;
 } else {
  h2c_parameter[2] = 0;
  h2c_parameter[1] = 0;
  h2c_parameter[0] = 0;
 }
 rtlpriv->btcoexist.balance_on = balance_on;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
   "[DM][BT], Balance=[%s:%dms:%dms], write 0xc=0x%x\n",
   balance_on ? "ON" : "OFF", ms0, ms1, h2c_parameter[0]<<16 |
   h2c_parameter[1]<<8 | h2c_parameter[2]);

 rtl8723e_fill_h2c_cmd(hw, 0xc, 3, h2c_parameter);
}
