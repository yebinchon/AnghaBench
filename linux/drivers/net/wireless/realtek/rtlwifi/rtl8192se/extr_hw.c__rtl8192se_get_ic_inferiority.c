
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_hal {int ic_class; } ;
struct rtl_efuse {scalar_t__ epromtype; int autoload_failflag; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ EEPROM_BOOT_EFUSE ;
 int EFUSE_IC_ID_OFFSET ;
 int IC_INFERIORITY_A ;
 int IC_INFERIORITY_B ;
 int efuse_read_1byte (struct ieee80211_hw*,int ) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8192se_get_ic_inferiority(struct ieee80211_hw *hw)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 efuse_id;

 rtlhal->ic_class = IC_INFERIORITY_A;


 if ((rtlefuse->epromtype == EEPROM_BOOT_EFUSE) &&
  !rtlefuse->autoload_failflag) {
  efuse_id = efuse_read_1byte(hw, EFUSE_IC_ID_OFFSET);

  if (efuse_id == 0xfe)
   rtlhal->ic_class = IC_INFERIORITY_B;
 }
}
