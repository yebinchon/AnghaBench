
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {scalar_t__ irq; TYPE_1__* driver; int flags; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* shutdown ) (struct usb_hcd*) ;} ;


 int HCD_FLAG_HW_ACCESSIBLE ;
 int free_irq (scalar_t__,struct usb_hcd*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct usb_hcd* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct usb_hcd*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ usb_hcd_is_primary_hcd (struct usb_hcd*) ;

void usb_hcd_pci_shutdown(struct pci_dev *dev)
{
 struct usb_hcd *hcd;

 hcd = pci_get_drvdata(dev);
 if (!hcd)
  return;

 if (test_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags) &&
   hcd->driver->shutdown) {
  hcd->driver->shutdown(hcd);
  if (usb_hcd_is_primary_hcd(hcd) && hcd->irq > 0)
   free_irq(hcd->irq, hcd);
  pci_disable_device(dev);
 }
}
