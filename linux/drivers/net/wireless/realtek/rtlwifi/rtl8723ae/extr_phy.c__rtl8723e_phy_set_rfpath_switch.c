
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int REG_LEDCFG0 ;
 int RFPGA0_XAB_RFPARAMETER ;
 int RFPGA0_XA_RFINTERFACEOE ;
 int RFPGA0_XB_RFINTERFACEOE ;
 scalar_t__ is_hal_stop (struct rtl_hal*) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;

__attribute__((used)) static void _rtl8723e_phy_set_rfpath_switch(struct ieee80211_hw *hw,
         bool bmain, bool is2t)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (is_hal_stop(rtlhal)) {
  rtl_set_bbreg(hw, REG_LEDCFG0, BIT(23), 0x01);
  rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(13), 0x01);
 }
 if (is2t) {
  if (bmain)
   rtl_set_bbreg(hw, RFPGA0_XB_RFINTERFACEOE,
          BIT(5) | BIT(6), 0x1);
  else
   rtl_set_bbreg(hw, RFPGA0_XB_RFINTERFACEOE,
          BIT(5) | BIT(6), 0x2);
 } else {
  if (bmain)
   rtl_set_bbreg(hw, RFPGA0_XA_RFINTERFACEOE, 0x300, 0x2);
  else
   rtl_set_bbreg(hw, RFPGA0_XA_RFINTERFACEOE, 0x300, 0x1);

 }

}
