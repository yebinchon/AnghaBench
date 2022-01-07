
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wusbhc {scalar_t__ ports_max; } ;
struct wusb_dev {int dummy; } ;
struct usb_device {int portnum; } ;
struct TYPE_2__ {struct wusb_dev* wusb_dev; } ;


 int BUG_ON (int) ;
 int wusb_dev_get (struct wusb_dev*) ;
 TYPE_1__* wusb_port_by_idx (struct wusbhc*,scalar_t__) ;
 scalar_t__ wusb_port_no_to_idx (int ) ;

struct wusb_dev *__wusb_dev_get_by_usb_dev(struct wusbhc *wusbhc,
        struct usb_device *usb_dev)
{
 struct wusb_dev *wusb_dev;
 u8 port_idx;

 port_idx = wusb_port_no_to_idx(usb_dev->portnum);
 BUG_ON(port_idx > wusbhc->ports_max);
 wusb_dev = wusb_port_by_idx(wusbhc, port_idx)->wusb_dev;
 if (wusb_dev != ((void*)0))
  wusb_dev_get(wusb_dev);
 return wusb_dev;
}
