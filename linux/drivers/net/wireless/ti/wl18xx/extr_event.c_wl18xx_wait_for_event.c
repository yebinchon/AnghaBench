
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int dummy; } ;
typedef enum wlcore_wait_event { ____Placeholder_wlcore_wait_event } wlcore_wait_event ;


 int DFS_CHANNELS_CONFIG_COMPLETE_EVENT ;
 int PEER_REMOVE_COMPLETE_EVENT_ID ;


 int wlcore_cmd_wait_for_event_or_timeout (struct wl1271*,int ,int*) ;

int wl18xx_wait_for_event(struct wl1271 *wl, enum wlcore_wait_event event,
     bool *timeout)
{
 u32 local_event;

 switch (event) {
 case 128:
  local_event = PEER_REMOVE_COMPLETE_EVENT_ID;
  break;

 case 129:
  local_event = DFS_CHANNELS_CONFIG_COMPLETE_EVENT;
  break;

 default:

  return 0;
 }
 return wlcore_cmd_wait_for_event_or_timeout(wl, local_event, timeout);
}
