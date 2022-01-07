
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int efuse_pg_packet_write (struct ieee80211_hw*,int,int,int*) ;
 int efuse_power_switch (struct ieee80211_hw*,int,int) ;

void efuse_force_write_vendor_id(struct ieee80211_hw *hw)
{
 u8 tmpdata[8] = { 0xFF, 0xFF, 0xEC, 0x10, 0xFF, 0xFF, 0xFF, 0xFF };

 efuse_power_switch(hw, 1, 1);

 efuse_pg_packet_write(hw, 1, 0xD, tmpdata);

 efuse_power_switch(hw, 1, 0);

}
