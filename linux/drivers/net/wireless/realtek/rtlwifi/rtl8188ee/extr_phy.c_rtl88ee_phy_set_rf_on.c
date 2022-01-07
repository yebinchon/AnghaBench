
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_SPS0_CTRL ;
 int REG_SYS_FUNC_EN ;
 int REG_TXPAUSE ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void rtl88ee_phy_set_rf_on(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_byte(rtlpriv, REG_SPS0_CTRL, 0x2b);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE3);

 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE3);
 rtl_write_byte(rtlpriv, REG_TXPAUSE, 0x00);
}
