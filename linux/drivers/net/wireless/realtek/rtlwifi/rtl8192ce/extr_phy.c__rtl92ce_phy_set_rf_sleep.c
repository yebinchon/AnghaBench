
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER ;
 int DBG_TRACE ;
 int REG_APSD_CTRL ;
 int REG_SPS0_CTRL ;
 int REG_SYS_FUNC_EN ;
 int REG_TXPAUSE ;
 int RF90_PATH_A ;
 int RFREG_OFFSET_MASK ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 scalar_t__ rtl_get_rfreg (struct ieee80211_hw*,int ,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int,int ,int) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl92ce_phy_set_rf_sleep(struct ieee80211_hw *hw)
{
 u32 u4b_tmp;
 u8 delay = 5;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_byte(rtlpriv, REG_TXPAUSE, 0xFF);
 rtl_set_rfreg(hw, RF90_PATH_A, 0x00, RFREG_OFFSET_MASK, 0x00);
 rtl_write_byte(rtlpriv, REG_APSD_CTRL, 0x40);
 u4b_tmp = rtl_get_rfreg(hw, RF90_PATH_A, 0, RFREG_OFFSET_MASK);
 while (u4b_tmp != 0 && delay > 0) {
  rtl_write_byte(rtlpriv, REG_APSD_CTRL, 0x0);
  rtl_set_rfreg(hw, RF90_PATH_A, 0x00, RFREG_OFFSET_MASK, 0x00);
  rtl_write_byte(rtlpriv, REG_APSD_CTRL, 0x40);
  u4b_tmp = rtl_get_rfreg(hw, RF90_PATH_A, 0, RFREG_OFFSET_MASK);
  delay--;
 }
 if (delay == 0) {
  rtl_write_byte(rtlpriv, REG_APSD_CTRL, 0x00);
  rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
  rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE3);
  rtl_write_byte(rtlpriv, REG_TXPAUSE, 0x00);
  RT_TRACE(rtlpriv, COMP_POWER, DBG_TRACE,
    "Switch RF timeout !!!\n");
  return;
 }
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
 rtl_write_byte(rtlpriv, REG_SPS0_CTRL, 0x22);
}
