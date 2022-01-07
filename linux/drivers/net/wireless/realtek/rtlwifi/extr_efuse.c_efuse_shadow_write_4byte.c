
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct rtl_efuse {void*** efuse_map; } ;
struct ieee80211_hw {int dummy; } ;


 size_t EFUSE_MODIFY_MAP ;
 struct rtl_efuse* rtl_efuse (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void efuse_shadow_write_4byte(struct ieee80211_hw *hw,
         u16 offset, u32 value)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));

 rtlefuse->efuse_map[EFUSE_MODIFY_MAP][offset] =
     (u8) (value & 0x000000FF);
 rtlefuse->efuse_map[EFUSE_MODIFY_MAP][offset + 1] =
     (u8) ((value >> 8) & 0x0000FF);
 rtlefuse->efuse_map[EFUSE_MODIFY_MAP][offset + 2] =
     (u8) ((value >> 16) & 0x00FF);
 rtlefuse->efuse_map[EFUSE_MODIFY_MAP][offset + 3] =
     (u8) ((value >> 24) & 0xFF);

}
