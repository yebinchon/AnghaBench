
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int mutex; } ;
struct wusb_dev {int dummy; } ;
struct usb_device {int dummy; } ;


 struct wusb_dev* __wusb_dev_get_by_usb_dev (struct wusbhc*,struct usb_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wusbhc* wusbhc_get_by_usb_dev (struct usb_device*) ;
 int wusbhc_put (struct wusbhc*) ;

__attribute__((used)) static inline
struct wusb_dev *wusb_dev_get_by_usb_dev(struct usb_device *usb_dev)
{
 struct wusbhc *wusbhc;
 struct wusb_dev *wusb_dev;
 wusbhc = wusbhc_get_by_usb_dev(usb_dev);
 if (wusbhc == ((void*)0))
  return ((void*)0);
 mutex_lock(&wusbhc->mutex);
 wusb_dev = __wusb_dev_get_by_usb_dev(wusbhc, usb_dev);
 mutex_unlock(&wusbhc->mutex);
 wusbhc_put(wusbhc);
 return wusb_dev;
}
