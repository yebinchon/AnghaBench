
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct gb_usb_device {TYPE_1__* gbphy_dev; int connection; } ;
struct TYPE_2__ {int dev; } ;


 int GB_USB_TYPE_HCD_STOP ;
 int dev_err (int *,char*,int) ;
 int gb_operation_sync (int ,int ,int *,int ,int *,int ) ;
 struct gb_usb_device* to_gb_usb_device (struct usb_hcd*) ;

__attribute__((used)) static void hcd_stop(struct usb_hcd *hcd)
{
 struct gb_usb_device *dev = to_gb_usb_device(hcd);
 int ret;

 ret = gb_operation_sync(dev->connection, GB_USB_TYPE_HCD_STOP,
    ((void*)0), 0, ((void*)0), 0);
 if (ret)
  dev_err(&dev->gbphy_dev->dev, "HCD stop failed '%d'\n", ret);
}
