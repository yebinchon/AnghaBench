
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl8723e_dm_bt_fw_coex_all_off (struct ieee80211_hw*) ;
 int rtl8723e_dm_bt_hw_coex_all_off (struct ieee80211_hw*) ;
 int rtl8723e_dm_bt_sw_coex_all_off (struct ieee80211_hw*) ;

void rtl8723e_btdm_coex_all_off(struct ieee80211_hw *hw)
{
 rtl8723e_dm_bt_fw_coex_all_off(hw);
 rtl8723e_dm_bt_sw_coex_all_off(hw);
 rtl8723e_dm_bt_hw_coex_all_off(hw);
}
