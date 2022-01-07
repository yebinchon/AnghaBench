
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ IS_92C_SERIAL (int ) ;
 int _rtl92c_phy_set_rfpath_switch (struct ieee80211_hw*,int,int) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

void rtl92c_phy_set_rfpath_switch(struct ieee80211_hw *hw, bool bmain)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (IS_92C_SERIAL(rtlhal->version))
  _rtl92c_phy_set_rfpath_switch(hw, bmain, 1);
 else
  _rtl92c_phy_set_rfpath_switch(hw, bmain, 0);
}
