
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface_assoc_descriptor {int bInterfaceCount; int bFirstInterface; } ;
struct usb_host_config {struct usb_interface_assoc_descriptor** intf_assoc; } ;
struct usb_device {int dev; } ;


 int USB_MAXIADS ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static struct usb_interface_assoc_descriptor *find_iad(struct usb_device *dev,
      struct usb_host_config *config,
      u8 inum)
{
 struct usb_interface_assoc_descriptor *retval = ((void*)0);
 struct usb_interface_assoc_descriptor *intf_assoc;
 int first_intf;
 int last_intf;
 int i;

 for (i = 0; (i < USB_MAXIADS && config->intf_assoc[i]); i++) {
  intf_assoc = config->intf_assoc[i];
  if (intf_assoc->bInterfaceCount == 0)
   continue;

  first_intf = intf_assoc->bFirstInterface;
  last_intf = first_intf + (intf_assoc->bInterfaceCount - 1);
  if (inum >= first_intf && inum <= last_intf) {
   if (!retval)
    retval = intf_assoc;
   else
    dev_err(&dev->dev, "Interface #%d referenced"
     " by multiple IADs\n", inum);
  }
 }

 return retval;
}
