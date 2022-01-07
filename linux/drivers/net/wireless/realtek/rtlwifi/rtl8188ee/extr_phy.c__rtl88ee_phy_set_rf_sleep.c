
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_SPS0_CTRL ;
 int REG_SYS_FUNC_EN ;
 int REG_TXPAUSE ;
 int RF90_PATH_A ;
 int RFREG_OFFSET_MASK ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int,int ,int) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl88ee_phy_set_rf_sleep(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_byte(rtlpriv, REG_TXPAUSE, 0xFF);
 rtl_set_rfreg(hw, RF90_PATH_A, 0x00, RFREG_OFFSET_MASK, 0x00);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
 rtl_write_byte(rtlpriv, REG_SPS0_CTRL, 0x22);
}
