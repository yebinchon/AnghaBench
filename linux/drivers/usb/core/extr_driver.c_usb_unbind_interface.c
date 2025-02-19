
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int is_prepared; } ;
struct TYPE_10__ {TYPE_3__ power; } ;
struct usb_interface {int needs_altsetting0; scalar_t__ needs_remote_wakeup; int condition; TYPE_6__* altsetting; TYPE_4__ dev; TYPE_2__* cur_altsetting; } ;
struct usb_host_endpoint {scalar_t__ streams; } ;
struct usb_driver {scalar_t__ supports_autosuspend; int (* disconnect ) (struct usb_interface*) ;int soft_unbind; scalar_t__ disable_hub_initiated_lpm; } ;
struct usb_device {scalar_t__ state; } ;
struct device {int driver; } ;
struct TYPE_11__ {int bInterfaceNumber; } ;
struct TYPE_12__ {TYPE_5__ desc; } ;
struct TYPE_7__ {int bNumEndpoints; scalar_t__ bAlternateSetting; } ;
struct TYPE_8__ {TYPE_1__ desc; struct usb_host_endpoint* endpoint; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int USB_INTERFACE_UNBINDING ;
 int USB_INTERFACE_UNBOUND ;
 int USB_MAXENDPOINTS ;
 scalar_t__ USB_STATE_NOTATTACHED ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_host_endpoint**) ;
 struct usb_host_endpoint** kmalloc_array (int ,int,int ) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int stub1 (struct usb_interface*) ;
 struct usb_driver* to_usb_driver (int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int usb_autoresume_device (struct usb_device*) ;
 int usb_autosuspend_device (struct usb_device*) ;
 int usb_disable_interface (struct usb_device*,struct usb_interface*,int) ;
 int usb_enable_interface (struct usb_device*,struct usb_interface*,int) ;
 int usb_free_streams (struct usb_interface*,struct usb_host_endpoint**,int,int ) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usb_unlocked_disable_lpm (struct usb_device*) ;
 int usb_unlocked_enable_lpm (struct usb_device*) ;

__attribute__((used)) static int usb_unbind_interface(struct device *dev)
{
 struct usb_driver *driver = to_usb_driver(dev->driver);
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_host_endpoint *ep, **eps = ((void*)0);
 struct usb_device *udev;
 int i, j, error, r;
 int lpm_disable_error = -ENODEV;

 intf->condition = USB_INTERFACE_UNBINDING;


 udev = interface_to_usbdev(intf);
 error = usb_autoresume_device(udev);






 if (driver->disable_hub_initiated_lpm)
  lpm_disable_error = usb_unlocked_disable_lpm(udev);





 if (!driver->soft_unbind || udev->state == USB_STATE_NOTATTACHED)
  usb_disable_interface(udev, intf, 0);

 driver->disconnect(intf);


 for (i = 0, j = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
  ep = &intf->cur_altsetting->endpoint[i];
  if (ep->streams == 0)
   continue;
  if (j == 0) {
   eps = kmalloc_array(USB_MAXENDPOINTS, sizeof(void *),
          GFP_KERNEL);
   if (!eps)
    break;
  }
  eps[j++] = ep;
 }
 if (j) {
  usb_free_streams(intf, eps, j, GFP_KERNEL);
  kfree(eps);
 }







 if (intf->cur_altsetting->desc.bAlternateSetting == 0) {



  usb_enable_interface(udev, intf, 0);
 } else if (!error && !intf->dev.power.is_prepared) {
  r = usb_set_interface(udev, intf->altsetting[0].
    desc.bInterfaceNumber, 0);
  if (r < 0)
   intf->needs_altsetting0 = 1;
 } else {
  intf->needs_altsetting0 = 1;
 }
 usb_set_intfdata(intf, ((void*)0));

 intf->condition = USB_INTERFACE_UNBOUND;
 intf->needs_remote_wakeup = 0;


 if (!lpm_disable_error)
  usb_unlocked_enable_lpm(udev);


 if (driver->supports_autosuspend)
  pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);

 if (!error)
  usb_autosuspend_device(udev);

 return 0;
}
