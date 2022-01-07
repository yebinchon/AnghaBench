
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_mac {scalar_t__ link_state; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct rtl_dm {int linked_interval; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ HARDWARE_TYPE_RTL8812AE ;
 scalar_t__ MAC80211_LINKED ;
 int rtl8812ae_phy_iq_calibrate (struct ieee80211_hw*,int) ;
 int rtl8821ae_phy_iq_calibrate (struct ieee80211_hw*,int) ;
 struct rtl_dm* rtl_dm (int ) ;
 struct rtl_hal* rtl_hal (int ) ;
 struct rtl_mac* rtl_mac (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8821ae_dm_iq_calibrate(struct ieee80211_hw *hw)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_dm *rtldm = rtl_dm(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (mac->link_state >= MAC80211_LINKED) {
  if (rtldm->linked_interval < 3)
   rtldm->linked_interval++;

  if (rtldm->linked_interval == 2) {
   if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
    rtl8812ae_phy_iq_calibrate(hw, 0);
   else
    rtl8821ae_phy_iq_calibrate(hw, 0);
  }
 } else {
  rtldm->linked_interval = 0;
 }
}
