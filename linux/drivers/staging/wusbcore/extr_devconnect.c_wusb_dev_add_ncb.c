
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusbhc {int mutex; } ;
struct wusb_dev {int usb_dev; } ;
struct device {int dummy; } ;
struct usb_device {scalar_t__ wusb; int devnum; int wusb_dev; int portnum; struct device dev; } ;


 int USB_STATE_UNAUTHENTICATED ;
 struct wusb_dev* __wusb_dev_get_by_usb_dev (struct wusbhc*,struct usb_device*) ;
 int __wusbhc_dev_disconnect (struct wusbhc*,int ) ;
 int dev_err (struct device*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_set_device_state (struct usb_device*,int ) ;
 int wusb_dev_bos_add (struct usb_device*,struct wusb_dev*) ;
 int wusb_dev_bos_rm (struct wusb_dev*) ;
 int wusb_dev_get (struct wusb_dev*) ;
 int wusb_dev_put (struct wusb_dev*) ;
 int wusb_dev_sec_add (struct wusbhc*,struct usb_device*,struct wusb_dev*) ;
 int wusb_dev_sec_rm (struct wusb_dev*) ;
 int wusb_dev_sysfs_add (struct wusbhc*,struct usb_device*,struct wusb_dev*) ;
 int wusb_port_by_idx (struct wusbhc*,int ) ;
 int wusb_port_no_to_idx (int ) ;
 struct wusbhc* wusbhc_get_by_usb_dev (struct usb_device*) ;
 int wusbhc_put (struct wusbhc*) ;

__attribute__((used)) static void wusb_dev_add_ncb(struct usb_device *usb_dev)
{
 int result = 0;
 struct wusb_dev *wusb_dev;
 struct wusbhc *wusbhc;
 struct device *dev = &usb_dev->dev;
 u8 port_idx;

 if (usb_dev->wusb == 0 || usb_dev->devnum == 1)
  return;

 usb_set_device_state(usb_dev, USB_STATE_UNAUTHENTICATED);

 wusbhc = wusbhc_get_by_usb_dev(usb_dev);
 if (wusbhc == ((void*)0))
  goto error_nodev;
 mutex_lock(&wusbhc->mutex);
 wusb_dev = __wusb_dev_get_by_usb_dev(wusbhc, usb_dev);
 port_idx = wusb_port_no_to_idx(usb_dev->portnum);
 mutex_unlock(&wusbhc->mutex);
 if (wusb_dev == ((void*)0))
  goto error_nodev;
 wusb_dev->usb_dev = usb_get_dev(usb_dev);
 usb_dev->wusb_dev = wusb_dev_get(wusb_dev);
 result = wusb_dev_sec_add(wusbhc, usb_dev, wusb_dev);
 if (result < 0) {
  dev_err(dev, "Cannot enable security: %d\n", result);
  goto error_sec_add;
 }

 result = wusb_dev_bos_add(usb_dev, wusb_dev);
 if (result < 0) {
  dev_err(dev, "Cannot get BOS descriptors: %d\n", result);
  goto error_bos_add;
 }
 result = wusb_dev_sysfs_add(wusbhc, usb_dev, wusb_dev);
 if (result < 0)
  goto error_add_sysfs;
out:
 wusb_dev_put(wusb_dev);
 wusbhc_put(wusbhc);
error_nodev:
 return;

error_add_sysfs:
 wusb_dev_bos_rm(wusb_dev);
error_bos_add:
 wusb_dev_sec_rm(wusb_dev);
error_sec_add:
 mutex_lock(&wusbhc->mutex);
 __wusbhc_dev_disconnect(wusbhc, wusb_port_by_idx(wusbhc, port_idx));
 mutex_unlock(&wusbhc->mutex);
 goto out;
}
