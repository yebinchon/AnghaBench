
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct usb_hcd {scalar_t__ wireless; } ;
struct usb_device {int devnum; int wusb; int dev; } ;


 int BUG_ON (int) ;
 int dev_err (int *,char*,int,int ) ;
 struct usb_hcd* usb_hcd_get_by_usb_dev (struct usb_device*) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;

__attribute__((used)) static inline struct wusbhc *wusbhc_get_by_usb_dev(struct usb_device *usb_dev)
{
 struct wusbhc *wusbhc = ((void*)0);
 struct usb_hcd *usb_hcd;
 if (usb_dev->devnum > 1 && !usb_dev->wusb) {

  dev_err(&usb_dev->dev, "devnum %d wusb %d\n", usb_dev->devnum,
   usb_dev->wusb);
  BUG_ON(usb_dev->devnum > 1 && !usb_dev->wusb);
 }
 usb_hcd = usb_hcd_get_by_usb_dev(usb_dev);
 if (usb_hcd == ((void*)0))
  return ((void*)0);
 BUG_ON(usb_hcd->wireless == 0);
 return wusbhc = usb_hcd_to_wusbhc(usb_hcd);
}
