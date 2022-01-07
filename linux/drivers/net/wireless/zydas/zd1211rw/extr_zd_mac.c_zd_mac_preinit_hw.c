
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_mac {int chip; } ;
struct ieee80211_hw {int dummy; } ;


 int ETH_ALEN ;
 int SET_IEEE80211_PERM_ADDR (struct ieee80211_hw*,int *) ;
 int zd_chip_read_mac_addr_fw (int *,int *) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;

int zd_mac_preinit_hw(struct ieee80211_hw *hw)
{
 int r;
 u8 addr[ETH_ALEN];
 struct zd_mac *mac = zd_hw_mac(hw);

 r = zd_chip_read_mac_addr_fw(&mac->chip, addr);
 if (r)
  return r;

 SET_IEEE80211_PERM_ADDR(hw, addr);

 return 0;
}
