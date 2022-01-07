
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct rtl_efuse {size_t** efuse_map; } ;
struct ieee80211_hw {int dummy; } ;


 size_t EFUSE_MODIFY_MAP ;
 struct rtl_efuse* rtl_efuse (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void efuse_shadow_write_2byte(struct ieee80211_hw *hw,
         u16 offset, u16 value)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));

 rtlefuse->efuse_map[EFUSE_MODIFY_MAP][offset] = value & 0x00FF;
 rtlefuse->efuse_map[EFUSE_MODIFY_MAP][offset + 1] = value >> 8;

}
