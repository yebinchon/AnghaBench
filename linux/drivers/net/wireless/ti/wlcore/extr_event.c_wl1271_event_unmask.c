
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int event_mask; } ;


 int DEBUG_EVENT ;
 int wl1271_acx_event_mbox_mask (struct wl1271*,int ) ;
 int wl1271_debug (int ,char*,int ) ;

int wl1271_event_unmask(struct wl1271 *wl)
{
 int ret;

 wl1271_debug(DEBUG_EVENT, "unmasking event_mask 0x%x", wl->event_mask);
 ret = wl1271_acx_event_mbox_mask(wl, ~(wl->event_mask));
 if (ret < 0)
  return ret;

 return 0;
}
