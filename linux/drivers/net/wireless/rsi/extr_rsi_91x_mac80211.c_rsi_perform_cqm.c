
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int last_cqm_event_rssi; int rssi_thold; int rssi_hyst; } ;
struct rsi_common {TYPE_1__ cqm_info; } ;
struct ieee80211_vif {int dummy; } ;
typedef int s8 ;
typedef enum nl80211_cqm_rssi_threshold_event { ____Placeholder_nl80211_cqm_rssi_threshold_event } nl80211_cqm_rssi_threshold_event ;


 int GFP_KERNEL ;
 int INFO_ZONE ;
 int NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH ;
 int NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW ;
 int ieee80211_cqm_rssi_notify (struct ieee80211_vif*,int,int,int ) ;
 int rsi_dbg (int ,char*,int) ;

__attribute__((used)) static void rsi_perform_cqm(struct rsi_common *common,
       u8 *bssid,
       s8 rssi,
       struct ieee80211_vif *vif)
{
 s8 last_event = common->cqm_info.last_cqm_event_rssi;
 int thold = common->cqm_info.rssi_thold;
 u32 hyst = common->cqm_info.rssi_hyst;
 enum nl80211_cqm_rssi_threshold_event event;

 if (rssi < thold && (last_event == 0 || rssi < (last_event - hyst)))
  event = NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW;
 else if (rssi > thold &&
   (last_event == 0 || rssi > (last_event + hyst)))
  event = NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH;
 else
  return;

 common->cqm_info.last_cqm_event_rssi = rssi;
 rsi_dbg(INFO_ZONE, "CQM: Notifying event: %d\n", event);
 ieee80211_cqm_rssi_notify(vif, event, rssi, GFP_KERNEL);

 return;
}
