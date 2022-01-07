
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int state; } ;
struct usb_bus {scalar_t__ root_hub; } ;
struct gb_usb_device {TYPE_1__* gbphy_dev; int connection; } ;
struct TYPE_2__ {int dev; } ;


 int GB_USB_TYPE_HCD_START ;
 int HC_STATE_RUNNING ;
 int dev_err (int *,char*,int) ;
 int gb_operation_sync (int ,int ,int *,int ,int *,int ) ;
 struct usb_bus* hcd_to_bus (struct usb_hcd*) ;
 struct gb_usb_device* to_gb_usb_device (struct usb_hcd*) ;
 int usb_hcd_resume_root_hub (struct usb_hcd*) ;

__attribute__((used)) static int hcd_start(struct usb_hcd *hcd)
{
 struct usb_bus *bus = hcd_to_bus(hcd);
 struct gb_usb_device *dev = to_gb_usb_device(hcd);
 int ret;

 ret = gb_operation_sync(dev->connection, GB_USB_TYPE_HCD_START,
    ((void*)0), 0, ((void*)0), 0);
 if (ret) {
  dev_err(&dev->gbphy_dev->dev, "HCD start failed '%d'\n", ret);
  return ret;
 }

 hcd->state = HC_STATE_RUNNING;
 if (bus->root_hub)
  usb_hcd_resume_root_hub(hcd);
 return 0;
}
