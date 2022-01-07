
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int _rtl92ee_phy_config_mac_with_headerfile (struct ieee80211_hw*) ;

bool rtl92ee_phy_mac_config(struct ieee80211_hw *hw)
{
 return _rtl92ee_phy_config_mac_with_headerfile(hw);
}
