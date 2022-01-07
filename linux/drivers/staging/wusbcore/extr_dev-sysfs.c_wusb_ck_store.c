
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct wusb_ckhdid {int * data; } ;
struct usb_device {int wusb_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int ck ;


 int EINVAL ;
 int ENODEV ;
 int memzero_explicit (struct wusb_ckhdid*,int) ;
 int sscanf (char const*,char*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 struct usb_device* to_usb_device (struct device*) ;
 int wusb_dev_4way_handshake (struct wusbhc*,int ,struct wusb_ckhdid*) ;
 struct wusbhc* wusbhc_get_by_usb_dev (struct usb_device*) ;
 int wusbhc_put (struct wusbhc*) ;

__attribute__((used)) static ssize_t wusb_ck_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t size)
{
 int result;
 struct usb_device *usb_dev;
 struct wusbhc *wusbhc;
 struct wusb_ckhdid ck;

 result = sscanf(buf,
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx\n",
   &ck.data[0] , &ck.data[1],
   &ck.data[2] , &ck.data[3],
   &ck.data[4] , &ck.data[5],
   &ck.data[6] , &ck.data[7],
   &ck.data[8] , &ck.data[9],
   &ck.data[10], &ck.data[11],
   &ck.data[12], &ck.data[13],
   &ck.data[14], &ck.data[15]);
 if (result != 16)
  return -EINVAL;

 usb_dev = to_usb_device(dev);
 wusbhc = wusbhc_get_by_usb_dev(usb_dev);
 if (wusbhc == ((void*)0))
  return -ENODEV;
 result = wusb_dev_4way_handshake(wusbhc, usb_dev->wusb_dev, &ck);
 memzero_explicit(&ck, sizeof(ck));
 wusbhc_put(wusbhc);
 return result < 0 ? result : size;
}
