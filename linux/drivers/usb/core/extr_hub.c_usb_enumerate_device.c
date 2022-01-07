
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {scalar_t__ tpl_support; } ;
struct TYPE_3__ {int iSerialNumber; int iManufacturer; int iProduct; } ;
struct usb_device {int dev; TYPE_2__* bus; TYPE_1__ descriptor; void* serial; void* manufacturer; void* product; int * config; } ;
struct TYPE_4__ {scalar_t__ is_b_host; scalar_t__ b_hnp_enable; } ;


 int CONFIG_USB_OTG ;
 int CONFIG_USB_OTG_WHITELIST ;
 int ENODEV ;
 int ENOTSUPP ;
 scalar_t__ IS_ENABLED (int ) ;
 int PMSG_AUTO_SUSPEND ;
 struct usb_hcd* bus_to_hcd (TYPE_2__*) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int) ;
 int is_targeted (struct usb_device*) ;
 void* usb_cache_string (struct usb_device*,int ) ;
 int usb_detect_interface_quirks (struct usb_device*) ;
 int usb_enumerate_device_otg (struct usb_device*) ;
 int usb_get_configuration (struct usb_device*) ;
 int usb_port_suspend (struct usb_device*,int ) ;

__attribute__((used)) static int usb_enumerate_device(struct usb_device *udev)
{
 int err;
 struct usb_hcd *hcd = bus_to_hcd(udev->bus);

 if (udev->config == ((void*)0)) {
  err = usb_get_configuration(udev);
  if (err < 0) {
   if (err != -ENODEV)
    dev_err(&udev->dev, "can't read configurations, error %d\n",
      err);
   return err;
  }
 }


 udev->product = usb_cache_string(udev, udev->descriptor.iProduct);
 udev->manufacturer = usb_cache_string(udev,
           udev->descriptor.iManufacturer);
 udev->serial = usb_cache_string(udev, udev->descriptor.iSerialNumber);

 err = usb_enumerate_device_otg(udev);
 if (err < 0)
  return err;

 if (IS_ENABLED(CONFIG_USB_OTG_WHITELIST) && hcd->tpl_support &&
  !is_targeted(udev)) {



  if (IS_ENABLED(CONFIG_USB_OTG) && (udev->bus->b_hnp_enable
   || udev->bus->is_b_host)) {
   err = usb_port_suspend(udev, PMSG_AUTO_SUSPEND);
   if (err < 0)
    dev_dbg(&udev->dev, "HNP fail, %d\n", err);
  }
  return -ENOTSUPP;
 }

 usb_detect_interface_quirks(udev);

 return 0;
}
