
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct usb_device* root_hub; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_device {int dummy; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ is_ohci_or_uhci (struct pci_dev*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_set_configuration (struct usb_device*,int ) ;

__attribute__((used)) static void ehci_pre_add(struct pci_dev *pdev, struct usb_hcd *hcd,
  struct pci_dev *companion, struct usb_hcd *companion_hcd)
{
 struct usb_device *udev;

 if (is_ohci_or_uhci(companion)) {
  udev = companion_hcd->self.root_hub;
  usb_lock_device(udev);
  usb_set_configuration(udev, 0);
 }
}
