
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int _rtl8821ae_phy_set_rfpath_switch (struct ieee80211_hw*,int) ;

void rtl8821ae_phy_set_rfpath_switch(struct ieee80211_hw *hw, bool bmain)
{
 _rtl8821ae_phy_set_rfpath_switch(hw, bmain);
}
