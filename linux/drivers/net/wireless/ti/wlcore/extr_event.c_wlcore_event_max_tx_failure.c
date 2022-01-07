
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;


 int DEBUG_EVENT ;
 int wl1271_debug (int ,char*) ;
 int wlcore_disconnect_sta (struct wl1271*,unsigned long) ;

void wlcore_event_max_tx_failure(struct wl1271 *wl, unsigned long sta_bitmap)
{
 wl1271_debug(DEBUG_EVENT, "MAX_TX_FAILURE_EVENT_ID");
 wlcore_disconnect_sta(wl, sta_bitmap);
}
