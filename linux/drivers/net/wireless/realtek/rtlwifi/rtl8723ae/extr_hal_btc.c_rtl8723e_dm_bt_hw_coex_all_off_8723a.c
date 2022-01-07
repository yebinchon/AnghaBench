
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl8723e_dm_bt_set_coex_table (struct ieee80211_hw*,int,int,int) ;
 int rtl8723e_dm_bt_set_hw_pta_mode (struct ieee80211_hw*,int) ;

void rtl8723e_dm_bt_hw_coex_all_off_8723a(struct ieee80211_hw *hw)
{
 rtl8723e_dm_bt_set_coex_table(hw, 0x5a5aaaaa, 0xcc, 0x3);
 rtl8723e_dm_bt_set_hw_pta_mode(hw, 1);
}
