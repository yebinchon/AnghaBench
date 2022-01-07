
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_stats {int packet_beacon; int packet_matchbssid; } ;
struct ieee80211_hw {int dummy; } ;


 int _rtl92de_process_pwdb (struct ieee80211_hw*,struct rtl_stats*) ;
 int _rtl92de_process_ui_link_quality (struct ieee80211_hw*,struct rtl_stats*) ;
 int _rtl92de_process_ui_rssi (struct ieee80211_hw*,struct rtl_stats*) ;

__attribute__((used)) static void _rtl92de_process_phyinfo(struct ieee80211_hw *hw,
         u8 *buffer,
         struct rtl_stats *pcurrent_stats)
{

 if (!pcurrent_stats->packet_matchbssid &&
     !pcurrent_stats->packet_beacon)
  return;

 _rtl92de_process_ui_rssi(hw, pcurrent_stats);
 _rtl92de_process_pwdb(hw, pcurrent_stats);
 _rtl92de_process_ui_link_quality(hw, pcurrent_stats);
}
