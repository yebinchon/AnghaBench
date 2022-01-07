
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_dm {int thermalvalue_iqk; } ;
struct ieee80211_hw {int dummy; } ;


 int rtl8821ae_phy_iq_calibrate (struct ieee80211_hw*,int) ;
 int rtl8821ae_reset_iqk_result (struct ieee80211_hw*) ;
 struct rtl_dm* rtl_dm (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

void rtl8821ae_do_iqk(struct ieee80211_hw *hw, u8 delta_thermal_index,
        u8 thermal_value, u8 threshold)
{
 struct rtl_dm *rtldm = rtl_dm(rtl_priv(hw));

 rtl8821ae_reset_iqk_result(hw);

 rtldm->thermalvalue_iqk = thermal_value;
 rtl8821ae_phy_iq_calibrate(hw, 0);
}
