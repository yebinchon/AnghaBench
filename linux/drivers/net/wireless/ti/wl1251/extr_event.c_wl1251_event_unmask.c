
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int event_mask; } ;


 int wl1251_acx_event_mbox_mask (struct wl1251*,int ) ;

int wl1251_event_unmask(struct wl1251 *wl)
{
 int ret;

 ret = wl1251_acx_event_mbox_mask(wl, ~(wl->event_mask));
 if (ret < 0)
  return ret;

 return 0;
}
