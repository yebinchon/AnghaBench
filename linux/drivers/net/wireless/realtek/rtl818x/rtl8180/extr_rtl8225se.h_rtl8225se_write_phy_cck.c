
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int rtl8180_write_phy (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static inline void rtl8225se_write_phy_cck(struct ieee80211_hw *dev,
      u8 addr, u8 data)
{
 rtl8180_write_phy(dev, addr, data | 0x10000);
}
