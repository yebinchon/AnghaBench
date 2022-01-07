
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ieee80211_hw {int dummy; } ;


 int efuse_shadow_read_1byte (struct ieee80211_hw*,int ,int*) ;
 int efuse_shadow_read_2byte (struct ieee80211_hw*,int ,int *) ;
 int efuse_shadow_read_4byte (struct ieee80211_hw*,int ,int *) ;

void efuse_shadow_read(struct ieee80211_hw *hw, u8 type,
         u16 offset, u32 *value)
{
 if (type == 1)
  efuse_shadow_read_1byte(hw, offset, (u8 *)value);
 else if (type == 2)
  efuse_shadow_read_2byte(hw, offset, (u16 *)value);
 else if (type == 4)
  efuse_shadow_read_4byte(hw, offset, value);

}
