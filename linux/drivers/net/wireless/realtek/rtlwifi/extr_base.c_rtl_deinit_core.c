
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl_c2hcmd_launcher (struct ieee80211_hw*,int ) ;
 int rtl_free_entries_from_ack_queue (struct ieee80211_hw*,int) ;
 int rtl_free_entries_from_scan_list (struct ieee80211_hw*) ;

void rtl_deinit_core(struct ieee80211_hw *hw)
{
 rtl_c2hcmd_launcher(hw, 0);
 rtl_free_entries_from_scan_list(hw);
 rtl_free_entries_from_ack_queue(hw, 0);
}
