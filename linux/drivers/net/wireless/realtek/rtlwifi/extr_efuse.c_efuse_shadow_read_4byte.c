
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct rtl_efuse {int** efuse_map; } ;
struct ieee80211_hw {int dummy; } ;


 size_t EFUSE_MODIFY_MAP ;
 struct rtl_efuse* rtl_efuse (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void efuse_shadow_read_4byte(struct ieee80211_hw *hw,
        u16 offset, u32 *value)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));

 *value = rtlefuse->efuse_map[EFUSE_MODIFY_MAP][offset];
 *value |= rtlefuse->efuse_map[EFUSE_MODIFY_MAP][offset + 1] << 8;
 *value |= rtlefuse->efuse_map[EFUSE_MODIFY_MAP][offset + 2] << 16;
 *value |= rtlefuse->efuse_map[EFUSE_MODIFY_MAP][offset + 3] << 24;
}
