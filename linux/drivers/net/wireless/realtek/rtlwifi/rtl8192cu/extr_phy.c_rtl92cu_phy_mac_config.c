
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int _rtl92cu_phy_config_mac_with_headerfile (struct ieee80211_hw*) ;

bool rtl92cu_phy_mac_config(struct ieee80211_hw *hw)
{
 bool rtstatus;

 rtstatus = _rtl92cu_phy_config_mac_with_headerfile(hw);
 return rtstatus;
}
