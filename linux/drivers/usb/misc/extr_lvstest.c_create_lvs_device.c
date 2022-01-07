
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_hcd {TYPE_3__* driver; } ;
struct TYPE_4__ {int wMaxPacketSize; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;
struct usb_device {TYPE_2__ ep0; int speed; int bus; } ;
struct lvs_rh {int portnum; int present; } ;
struct TYPE_6__ {scalar_t__ (* enable_device ) (struct usb_hcd*,struct usb_device*) ;} ;


 int USB_SPEED_SUPER ;
 int USB_STATE_DEFAULT ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int cpu_to_le16 (int) ;
 int dev_err (int *,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 scalar_t__ stub1 (struct usb_hcd*,struct usb_device*) ;
 struct usb_device* usb_alloc_dev (struct usb_device*,int ,int ) ;
 struct lvs_rh* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_set_device_state (struct usb_device*,int ) ;

__attribute__((used)) static struct usb_device *create_lvs_device(struct usb_interface *intf)
{
 struct usb_device *udev, *hdev;
 struct usb_hcd *hcd;
 struct lvs_rh *lvs = usb_get_intfdata(intf);

 if (!lvs->present) {
  dev_err(&intf->dev, "No LVS device is present\n");
  return ((void*)0);
 }

 hdev = interface_to_usbdev(intf);
 hcd = bus_to_hcd(hdev->bus);

 udev = usb_alloc_dev(hdev, hdev->bus, lvs->portnum);
 if (!udev) {
  dev_err(&intf->dev, "Could not allocate lvs udev\n");
  return ((void*)0);
 }
 udev->speed = USB_SPEED_SUPER;
 udev->ep0.desc.wMaxPacketSize = cpu_to_le16(512);
 usb_set_device_state(udev, USB_STATE_DEFAULT);

 if (hcd->driver->enable_device) {
  if (hcd->driver->enable_device(hcd, udev) < 0) {
   dev_err(&intf->dev, "Failed to enable\n");
   usb_put_dev(udev);
   return ((void*)0);
  }
 }

 return udev;
}
