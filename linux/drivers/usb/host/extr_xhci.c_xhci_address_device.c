
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct usb_device {int dummy; } ;


 int SETUP_CONTEXT_ADDRESS ;
 int xhci_setup_device (struct usb_hcd*,struct usb_device*,int ) ;

__attribute__((used)) static int xhci_address_device(struct usb_hcd *hcd, struct usb_device *udev)
{
 return xhci_setup_device(hcd, udev, SETUP_CONTEXT_ADDRESS);
}
