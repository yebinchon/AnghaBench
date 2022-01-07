
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BASEBAND_CONFIG_AGC_TAB ;
 scalar_t__ BASEBAND_CONFIG_PHY_REG ;
 int * RTL8188EEAGCTAB_1TARRAY ;
 int RTL8188EEAGCTAB_1TARRAYLEN ;
 int * RTL8188EEPHY_REG_1TARRAY ;
 int RTL8188EEPHY_REG_1TARRAYLEN ;
 int handle_branch1 (struct ieee80211_hw*,int ,int *) ;
 int handle_branch2 (struct ieee80211_hw*,int ,int *) ;

__attribute__((used)) static bool phy_config_bb_with_headerfile(struct ieee80211_hw *hw,
       u8 configtype)
{
 u32 *array_table;
 u16 arraylen;

 if (configtype == BASEBAND_CONFIG_PHY_REG) {
  arraylen = RTL8188EEPHY_REG_1TARRAYLEN;
  array_table = RTL8188EEPHY_REG_1TARRAY;
  handle_branch1(hw, arraylen, array_table);
 } else if (configtype == BASEBAND_CONFIG_AGC_TAB) {
  arraylen = RTL8188EEAGCTAB_1TARRAYLEN;
  array_table = RTL8188EEAGCTAB_1TARRAY;
  handle_branch2(hw, arraylen, array_table);
 }
 return 1;
}
