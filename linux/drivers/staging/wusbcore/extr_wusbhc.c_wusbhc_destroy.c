
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;


 int wusbhc_devconnect_destroy (struct wusbhc*) ;
 int wusbhc_mmcie_destroy (struct wusbhc*) ;
 int wusbhc_rh_destroy (struct wusbhc*) ;
 int wusbhc_sec_destroy (struct wusbhc*) ;

void wusbhc_destroy(struct wusbhc *wusbhc)
{
 wusbhc_sec_destroy(wusbhc);
 wusbhc_rh_destroy(wusbhc);
 wusbhc_devconnect_destroy(wusbhc);
 wusbhc_mmcie_destroy(wusbhc);
}
