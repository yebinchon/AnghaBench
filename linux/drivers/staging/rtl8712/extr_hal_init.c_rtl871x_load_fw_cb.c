
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device {int dev; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {struct usb_device* pusbdev; } ;
struct _adapter {int pnetdev; struct firmware const* fw; struct usb_interface* pusb_intf; TYPE_1__ dvobjpriv; int rtl8712_fw_ready; } ;


 int complete (int *) ;
 int dev_err (int *,char*) ;
 int register_netdev (int ) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void rtl871x_load_fw_cb(const struct firmware *firmware, void *context)
{
 struct _adapter *adapter = context;

 complete(&adapter->rtl8712_fw_ready);
 if (!firmware) {
  struct usb_device *udev = adapter->dvobjpriv.pusbdev;
  struct usb_interface *usb_intf = adapter->pusb_intf;

  dev_err(&udev->dev, "r8712u: Firmware request failed\n");
  usb_put_dev(udev);
  usb_set_intfdata(usb_intf, ((void*)0));
  return;
 }
 adapter->fw = firmware;

 register_netdev(adapter->pnetdev);
}
