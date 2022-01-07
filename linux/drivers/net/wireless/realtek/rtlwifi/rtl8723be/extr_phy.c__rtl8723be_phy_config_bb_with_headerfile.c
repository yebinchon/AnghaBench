
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BASEBAND_CONFIG_AGC_TAB ;
 scalar_t__ BASEBAND_CONFIG_PHY_REG ;
 int RTL8723BEAGCTAB_1TARRAY ;
 int RTL8723BEAGCTAB_1TARRAYLEN ;
 int RTL8723BEPHY_REG_1TARRAY ;
 int RTL8723BEPHY_REG_1TARRAYLEN ;
 int _rtl8723be_config_bb_reg ;
 int rtl8723be_phy_config_with_headerfile (struct ieee80211_hw*,int ,int ,int ) ;
 int rtl_set_bbreg_with_dwmask ;

__attribute__((used)) static bool _rtl8723be_phy_config_bb_with_headerfile(struct ieee80211_hw *hw,
           u8 configtype)
{

 if (configtype == BASEBAND_CONFIG_PHY_REG)
  return rtl8723be_phy_config_with_headerfile(hw,
    RTL8723BEPHY_REG_1TARRAY,
    RTL8723BEPHY_REG_1TARRAYLEN,
    _rtl8723be_config_bb_reg);
 else if (configtype == BASEBAND_CONFIG_AGC_TAB)
  return rtl8723be_phy_config_with_headerfile(hw,
    RTL8723BEAGCTAB_1TARRAY,
    RTL8723BEAGCTAB_1TARRAYLEN,
    rtl_set_bbreg_with_dwmask);

 return 0;
}
