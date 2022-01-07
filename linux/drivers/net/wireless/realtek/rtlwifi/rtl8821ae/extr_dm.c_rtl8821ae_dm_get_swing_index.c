
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct rtl_hal {int current_bandtype; } ;
struct ieee80211_hw {int dummy; } ;


 int RF90_PATH_A ;
 size_t TXSCALE_TABLE_SIZE ;
 scalar_t__ phy_get_tx_swing_8812A (struct ieee80211_hw*,int ,int ) ;
 scalar_t__* rtl8821ae_txscaling_table ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static u8 rtl8821ae_dm_get_swing_index(struct ieee80211_hw *hw)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 i = 0;
 u32 bb_swing;

 bb_swing = phy_get_tx_swing_8812A(hw, rtlhal->current_bandtype,
       RF90_PATH_A);

 for (i = 0; i < TXSCALE_TABLE_SIZE; ++i)
  if (bb_swing == rtl8821ae_txscaling_table[i])
   break;

 return i;
}
