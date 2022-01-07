
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;


 int BT_PTA_MODE_ON ;
 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

__attribute__((used)) static void rtl8723e_dm_bt_set_hw_pta_mode(struct ieee80211_hw *hw, bool b_mode)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (BT_PTA_MODE_ON == b_mode) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE, "PTA mode on\n");

  rtl_write_byte(rtlpriv, 0x40, 0x20);
  rtlpriv->btcoexist.hw_coexist_all_off = 0;
 } else {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE, "PTA mode off\n");
  rtl_write_byte(rtlpriv, 0x40, 0x0);
 }
}
