
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wl1251 {scalar_t__ station_mode; TYPE_1__* vif; scalar_t__ rssi_thold; scalar_t__ psm_requested; } ;
struct event_mailbox {int events_vector; int events_mask; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int BSS_LOSE_EVENT_ID ;
 int DEBUG_EVENT ;
 int GFP_KERNEL ;
 int NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH ;
 int NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int PS_REPORT_EVENT_ID ;
 int REGAINED_BSS_EVENT_ID ;
 int ROAMING_TRIGGER_LOW_RSSI_EVENT_ID ;
 int ROAMING_TRIGGER_REGAINED_RSSI_EVENT_ID ;
 int SCAN_COMPLETE_EVENT_ID ;
 scalar_t__ STATION_ACTIVE_MODE ;
 scalar_t__ STATION_POWER_SAVE_MODE ;
 int SYNCHRONIZATION_TIMEOUT_EVENT_ID ;
 int ieee80211_beacon_loss (TYPE_1__*) ;
 int ieee80211_cqm_rssi_notify (TYPE_1__*,int ,int ,int ) ;
 int wl1251_debug (int ,char*,...) ;
 int wl1251_event_mbox_dump (struct event_mailbox*) ;
 int wl1251_event_ps_report (struct wl1251*,struct event_mailbox*) ;
 int wl1251_event_scan_complete (struct wl1251*,struct event_mailbox*) ;
 int wl1251_ps_set_mode (struct wl1251*,scalar_t__) ;

__attribute__((used)) static int wl1251_event_process(struct wl1251 *wl, struct event_mailbox *mbox)
{
 int ret;
 u32 vector;

 wl1251_event_mbox_dump(mbox);

 vector = mbox->events_vector & ~(mbox->events_mask);
 wl1251_debug(DEBUG_EVENT, "vector: 0x%x", vector);

 if (vector & SCAN_COMPLETE_EVENT_ID) {
  ret = wl1251_event_scan_complete(wl, mbox);
  if (ret < 0)
   return ret;
 }

 if (vector & BSS_LOSE_EVENT_ID) {
  wl1251_debug(DEBUG_EVENT, "BSS_LOSE_EVENT");

  if (wl->psm_requested &&
      wl->station_mode != STATION_ACTIVE_MODE) {
   ret = wl1251_ps_set_mode(wl, STATION_ACTIVE_MODE);
   if (ret < 0)
    return ret;
  }
 }

 if (vector & PS_REPORT_EVENT_ID) {
  wl1251_debug(DEBUG_EVENT, "PS_REPORT_EVENT");
  ret = wl1251_event_ps_report(wl, mbox);
  if (ret < 0)
   return ret;
 }

 if (vector & SYNCHRONIZATION_TIMEOUT_EVENT_ID) {
  wl1251_debug(DEBUG_EVENT, "SYNCHRONIZATION_TIMEOUT_EVENT");


  if (wl->vif && wl->vif->type == NL80211_IFTYPE_STATION)
   ieee80211_beacon_loss(wl->vif);
 }

 if (vector & REGAINED_BSS_EVENT_ID) {
  if (wl->psm_requested) {
   ret = wl1251_ps_set_mode(wl, STATION_POWER_SAVE_MODE);
   if (ret < 0)
    return ret;
  }
 }

 if (wl->vif && wl->rssi_thold) {
  if (vector & ROAMING_TRIGGER_LOW_RSSI_EVENT_ID) {
   wl1251_debug(DEBUG_EVENT,
         "ROAMING_TRIGGER_LOW_RSSI_EVENT");
   ieee80211_cqm_rssi_notify(wl->vif,
    NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW,
    0, GFP_KERNEL);
  }

  if (vector & ROAMING_TRIGGER_REGAINED_RSSI_EVENT_ID) {
   wl1251_debug(DEBUG_EVENT,
         "ROAMING_TRIGGER_REGAINED_RSSI_EVENT");
   ieee80211_cqm_rssi_notify(wl->vif,
    NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH,
    0, GFP_KERNEL);
  }
 }

 return 0;
}
