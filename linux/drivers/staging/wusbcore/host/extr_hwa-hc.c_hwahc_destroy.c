
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {int mutex; int uwb_rc; int * dev; } ;
struct TYPE_2__ {int usb_dev; int usb_iface; } ;
struct hwahc {TYPE_1__ wa; struct wusbhc wusbhc; } ;


 int __wa_destroy (TYPE_1__*) ;
 int hwahc_security_release (struct hwahc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_put_dev (int ) ;
 int usb_put_intf (int ) ;
 int uwb_rc_put (int ) ;
 int wusbhc_destroy (struct wusbhc*) ;

__attribute__((used)) static void hwahc_destroy(struct hwahc *hwahc)
{
 struct wusbhc *wusbhc = &hwahc->wusbhc;

 mutex_lock(&wusbhc->mutex);
 __wa_destroy(&hwahc->wa);
 wusbhc_destroy(&hwahc->wusbhc);
 hwahc_security_release(hwahc);
 hwahc->wusbhc.dev = ((void*)0);
 uwb_rc_put(wusbhc->uwb_rc);
 usb_put_intf(hwahc->wa.usb_iface);
 usb_put_dev(hwahc->wa.usb_dev);
 mutex_unlock(&wusbhc->mutex);
}
