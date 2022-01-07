
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int* rfpath_rxenable; } ;
struct rtl_phy {int dummy; } ;
struct rtl_priv {TYPE_2__ dm; TYPE_1__* cfg; struct rtl_phy phy; } ;
struct rtl_hal {int version; } ;
struct rtl_efuse {int autoload_failflag; int epromtype; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int * maps; } ;


 int BIT (int) ;
 int COMP_INIT ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int EEPROM_93C46 ;
 int EEPROM_BOOT_EFUSE ;
 int EFUSE_SEL (int ) ;
 int EFUSE_SEL_MASK ;
 size_t EFUSE_TEST ;
 int EFUSE_WIFI_SEL_0 ;
 int REG_9346CR ;
 scalar_t__ RF_1T1R ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int _rtl8723e_hal_customized_behavior (struct ieee80211_hw*) ;
 int _rtl8723e_read_adapter_info (struct ieee80211_hw*,int) ;
 int _rtl8723e_read_chip_version (struct ieee80211_hw*) ;
 scalar_t__ get_rf_type (struct rtl_phy*) ;
 int pr_err (char*) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

void rtl8723e_read_eeprom_info(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 tmp_u1b;
 u32 value32;

 value32 = rtl_read_dword(rtlpriv, rtlpriv->cfg->maps[EFUSE_TEST]);
 value32 = (value32 & ~EFUSE_SEL_MASK) | EFUSE_SEL(EFUSE_WIFI_SEL_0);
 rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[EFUSE_TEST], value32);

 rtlhal->version = _rtl8723e_read_chip_version(hw);

 if (get_rf_type(rtlphy) == RF_1T1R)
  rtlpriv->dm.rfpath_rxenable[0] = 1;
 else
  rtlpriv->dm.rfpath_rxenable[0] =
      rtlpriv->dm.rfpath_rxenable[1] = 1;
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "VersionID = 0x%4x\n",
      rtlhal->version);

 tmp_u1b = rtl_read_byte(rtlpriv, REG_9346CR);
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
  _rtl8723e_read_adapter_info(hw, 0);
 } else {
  rtlefuse->autoload_failflag = 1;
  _rtl8723e_read_adapter_info(hw, 0);
  pr_err("Autoload ERR!!\n");
 }
 _rtl8723e_hal_customized_behavior(hw);
}
