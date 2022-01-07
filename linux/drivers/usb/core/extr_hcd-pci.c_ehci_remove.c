
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hs_companion; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ is_ohci_or_uhci (struct pci_dev*) ;

__attribute__((used)) static void ehci_remove(struct pci_dev *pdev, struct usb_hcd *hcd,
  struct pci_dev *companion, struct usb_hcd *companion_hcd)
{
 if (is_ohci_or_uhci(companion))
  companion_hcd->self.hs_companion = ((void*)0);
}
