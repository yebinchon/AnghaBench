
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_efuse {int autoload_failflag; int epromtype; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_INIT ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int EEPROM_93C46 ;
 int EEPROM_BOOT_EFUSE ;
 int EPROM_CMD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl92se_read_adapter_info (struct ieee80211_hw*) ;
 int pr_err (char*) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;

void rtl92se_read_eeprom_info(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u8 tmp_u1b = 0;

 tmp_u1b = rtl_read_byte(rtlpriv, EPROM_CMD);

 if (tmp_u1b & BIT(4)) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG, "Boot from EEPROM\n");
  rtlefuse->epromtype = EEPROM_93C46;
 } else {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG, "Boot from EFUSE\n");
  rtlefuse->epromtype = EEPROM_BOOT_EFUSE;
 }

 if (tmp_u1b & BIT(5)) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "Autoload OK\n");
  rtlefuse->autoload_failflag = 0;
  _rtl92se_read_adapter_info(hw);
 } else {
  pr_err("Autoload ERR!!\n");
  rtlefuse->autoload_failflag = 1;
 }
}
