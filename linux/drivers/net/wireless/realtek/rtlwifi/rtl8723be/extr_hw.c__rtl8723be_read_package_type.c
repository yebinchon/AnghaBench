
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int PACKAGE_DEFAULT ;
 int PACKAGE_QFN68 ;
 int PACKAGE_TFBGA79 ;
 int PACKAGE_TFBGA80 ;
 int PACKAGE_TFBGA90 ;
 int efuse_one_byte_read (struct ieee80211_hw*,int,int*) ;
 int efuse_power_switch (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static u8 _rtl8723be_read_package_type(struct ieee80211_hw *hw)
{
 u8 package_type;
 u8 value;

 efuse_power_switch(hw, 0, 1);
 if (!efuse_one_byte_read(hw, 0x1FB, &value))
  value = 0;
 efuse_power_switch(hw, 0, 0);

 switch (value & 0x7) {
 case 0x4:
  package_type = PACKAGE_TFBGA79;
  break;
 case 0x5:
  package_type = PACKAGE_TFBGA90;
  break;
 case 0x6:
  package_type = PACKAGE_QFN68;
  break;
 case 0x7:
  package_type = PACKAGE_TFBGA80;
  break;
 default:
  package_type = PACKAGE_DEFAULT;
  break;
 }

 return package_type;
}
