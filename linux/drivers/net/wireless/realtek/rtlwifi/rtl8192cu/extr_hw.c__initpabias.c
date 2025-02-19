
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 scalar_t__ IS_92C_SERIAL (int ) ;
 scalar_t__ IS_NORMAL_CHIP (int ) ;
 int RF90_PATH_A ;
 int RF90_PATH_B ;
 int efuse_read_1byte (struct ieee80211_hw*,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int,int,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

__attribute__((used)) static void _initpabias(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 pa_setting;


 pa_setting = efuse_read_1byte(hw, 0x1FA);
 if (!(pa_setting & BIT(0))) {
  rtl_set_rfreg(hw, RF90_PATH_A, 0x15, 0x0FFFFF, 0x0F406);
  rtl_set_rfreg(hw, RF90_PATH_A, 0x15, 0x0FFFFF, 0x4F406);
  rtl_set_rfreg(hw, RF90_PATH_A, 0x15, 0x0FFFFF, 0x8F406);
  rtl_set_rfreg(hw, RF90_PATH_A, 0x15, 0x0FFFFF, 0xCF406);
 }
 if (!(pa_setting & BIT(1)) && IS_NORMAL_CHIP(rtlhal->version) &&
     IS_92C_SERIAL(rtlhal->version)) {
  rtl_set_rfreg(hw, RF90_PATH_B, 0x15, 0x0FFFFF, 0x0F406);
  rtl_set_rfreg(hw, RF90_PATH_B, 0x15, 0x0FFFFF, 0x4F406);
  rtl_set_rfreg(hw, RF90_PATH_B, 0x15, 0x0FFFFF, 0x8F406);
  rtl_set_rfreg(hw, RF90_PATH_B, 0x15, 0x0FFFFF, 0xCF406);
 }
 if (!(pa_setting & BIT(4))) {
  pa_setting = rtl_read_byte(rtlpriv, 0x16);
  pa_setting &= 0x0F;
  rtl_write_byte(rtlpriv, 0x16, pa_setting | 0x90);
 }
}
