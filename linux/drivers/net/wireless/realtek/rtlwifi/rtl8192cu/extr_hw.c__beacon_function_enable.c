
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 scalar_t__ REG_RD_CTRL ;
 int _rtl92cu_set_bcn_ctrl_reg (struct ieee80211_hw*,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;

__attribute__((used)) static void _beacon_function_enable(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 _rtl92cu_set_bcn_ctrl_reg(hw, (BIT(4) | BIT(3) | BIT(1)), 0x00);
 rtl_write_byte(rtlpriv, REG_RD_CTRL+1, 0x6F);
}
