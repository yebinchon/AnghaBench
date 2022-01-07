
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct ieee80211_hw {int dummy; } ;


 int efuse_shadow_write_1byte (struct ieee80211_hw*,int ,int) ;
 int efuse_shadow_write_2byte (struct ieee80211_hw*,int ,int ) ;
 int efuse_shadow_write_4byte (struct ieee80211_hw*,int ,scalar_t__) ;

void efuse_shadow_write(struct ieee80211_hw *hw, u8 type, u16 offset,
    u32 value)
{
 if (type == 1)
  efuse_shadow_write_1byte(hw, offset, (u8) value);
 else if (type == 2)
  efuse_shadow_write_2byte(hw, offset, (u16) value);
 else if (type == 4)
  efuse_shadow_write_4byte(hw, offset, value);

}
