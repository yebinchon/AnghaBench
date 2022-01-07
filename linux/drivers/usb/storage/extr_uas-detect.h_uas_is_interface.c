
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; } ;
struct usb_host_interface {TYPE_1__ desc; } ;


 scalar_t__ USB_CLASS_MASS_STORAGE ;
 scalar_t__ USB_PR_UAS ;
 scalar_t__ USB_SC_SCSI ;

__attribute__((used)) static int uas_is_interface(struct usb_host_interface *intf)
{
 return (intf->desc.bInterfaceClass == USB_CLASS_MASS_STORAGE &&
  intf->desc.bInterfaceSubClass == USB_SC_SCSI &&
  intf->desc.bInterfaceProtocol == USB_PR_UAS);
}
