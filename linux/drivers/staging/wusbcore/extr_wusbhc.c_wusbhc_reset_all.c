
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {scalar_t__ uwb_rc; } ;


 int uwb_rc_reset_all (scalar_t__) ;

void wusbhc_reset_all(struct wusbhc *wusbhc)
{
 if (wusbhc->uwb_rc)
  uwb_rc_reset_all(wusbhc->uwb_rc);
}
