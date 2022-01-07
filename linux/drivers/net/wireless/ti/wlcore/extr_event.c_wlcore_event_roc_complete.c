
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int hw; scalar_t__ roc_vif; } ;


 int DEBUG_EVENT ;
 int ieee80211_ready_on_channel (int ) ;
 int wl1271_debug (int ,char*) ;

void wlcore_event_roc_complete(struct wl1271 *wl)
{
 wl1271_debug(DEBUG_EVENT, "REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID");
 if (wl->roc_vif)
  ieee80211_ready_on_channel(wl->hw);
}
