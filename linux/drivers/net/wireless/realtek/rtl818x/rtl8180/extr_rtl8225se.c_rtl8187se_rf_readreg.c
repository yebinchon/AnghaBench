
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int rtl8187se_three_wire_io (struct ieee80211_hw*,int*,int,int ) ;

__attribute__((used)) static u32 rtl8187se_rf_readreg(struct ieee80211_hw *dev, u8 addr)
{
 u32 dataread = addr & 0x0F;
 rtl8187se_three_wire_io(dev, (u8 *)&dataread, 16, 0);
 return dataread;
}
