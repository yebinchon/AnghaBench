
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_stats {int packet_matchbssid; } ;
struct ieee80211_hw {int dummy; } ;


 int rtl_process_pwdb (struct ieee80211_hw*,struct rtl_stats*) ;
 int rtl_process_ui_link_quality (struct ieee80211_hw*,struct rtl_stats*) ;
 int rtl_process_ui_rssi (struct ieee80211_hw*,struct rtl_stats*) ;

void rtl_process_phyinfo(struct ieee80211_hw *hw, u8 *buffer,
    struct rtl_stats *pstatus)
{

 if (!pstatus->packet_matchbssid)
  return;

 rtl_process_ui_rssi(hw, pstatus);
 rtl_process_pwdb(hw, pstatus);
 rtl_process_ui_link_quality(hw, pstatus);
}
