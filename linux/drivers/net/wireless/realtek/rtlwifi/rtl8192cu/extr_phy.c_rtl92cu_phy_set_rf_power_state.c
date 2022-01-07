
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_ps_ctl {int rfpwr_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;


 int _rtl92cu_phy_set_rf_power_state (struct ieee80211_hw*,int) ;
 int rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (int ) ;

bool rtl92cu_phy_set_rf_power_state(struct ieee80211_hw *hw,
        enum rf_pwrstate rfpwr_state)
{
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 bool bresult = 0;

 if (rfpwr_state == ppsc->rfpwr_state)
  return bresult;
 bresult = _rtl92cu_phy_set_rf_power_state(hw, rfpwr_state);
 return bresult;
}
