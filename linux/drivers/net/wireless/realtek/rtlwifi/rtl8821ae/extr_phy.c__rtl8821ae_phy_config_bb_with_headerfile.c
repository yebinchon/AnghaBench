
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BASEBAND_CONFIG_AGC_TAB ;
 scalar_t__ BASEBAND_CONFIG_PHY_REG ;
 scalar_t__ HARDWARE_TYPE_RTL8812AE ;
 int RTL8812AE_AGC_TAB_1TARRAYLEN ;
 int * RTL8812AE_AGC_TAB_ARRAY ;
 int RTL8812AE_PHY_REG_1TARRAYLEN ;
 int * RTL8812AE_PHY_REG_ARRAY ;
 int RTL8821AE_AGC_TAB_1TARRAYLEN ;
 int * RTL8821AE_AGC_TAB_ARRAY ;
 int RTL8821AE_PHY_REG_1TARRAYLEN ;
 int * RTL8821AE_PHY_REG_ARRAY ;
 int __rtl8821ae_phy_config_with_headerfile (struct ieee80211_hw*,int *,int ,int ) ;
 int _rtl8821ae_config_bb_reg ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg_with_dwmask ;

__attribute__((used)) static bool _rtl8821ae_phy_config_bb_with_headerfile(struct ieee80211_hw *hw,
           u8 configtype)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);
 u32 *array_table;
 u16 arraylen;

 if (configtype == BASEBAND_CONFIG_PHY_REG) {
  if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
   arraylen = RTL8812AE_PHY_REG_1TARRAYLEN;
   array_table = RTL8812AE_PHY_REG_ARRAY;
  } else {
   arraylen = RTL8821AE_PHY_REG_1TARRAYLEN;
   array_table = RTL8821AE_PHY_REG_ARRAY;
  }

  return __rtl8821ae_phy_config_with_headerfile(hw,
    array_table, arraylen,
    _rtl8821ae_config_bb_reg);
 } else if (configtype == BASEBAND_CONFIG_AGC_TAB) {
  if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
   arraylen = RTL8812AE_AGC_TAB_1TARRAYLEN;
   array_table = RTL8812AE_AGC_TAB_ARRAY;
  } else {
   arraylen = RTL8821AE_AGC_TAB_1TARRAYLEN;
   array_table = RTL8821AE_AGC_TAB_ARRAY;
  }

  return __rtl8821ae_phy_config_with_headerfile(hw,
    array_table, arraylen,
    rtl_set_bbreg_with_dwmask);
 }
 return 1;
}
