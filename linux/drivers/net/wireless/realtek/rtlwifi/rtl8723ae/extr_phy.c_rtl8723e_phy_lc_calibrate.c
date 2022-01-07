
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int _rtl8723e_phy_lc_calibrate (struct ieee80211_hw*,int) ;

void rtl8723e_phy_lc_calibrate(struct ieee80211_hw *hw)
{
 _rtl8723e_phy_lc_calibrate(hw, 0);
}
