
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int pal; scalar_t__ uwb_rc; } ;


 int uwb_pal_unregister (int *) ;

void wusbhc_pal_unregister(struct wusbhc *wusbhc)
{
 if (wusbhc->uwb_rc)
  uwb_pal_unregister(&wusbhc->pal);
}
