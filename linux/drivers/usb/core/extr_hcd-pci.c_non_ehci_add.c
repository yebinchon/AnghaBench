
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* hs_companion; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_dev {scalar_t__ class; int dev; } ;


 scalar_t__ CL_EHCI ;
 int dev_dbg (int *,char*,int ) ;
 int dev_name (int *) ;
 scalar_t__ is_ohci_or_uhci (struct pci_dev*) ;

__attribute__((used)) static void non_ehci_add(struct pci_dev *pdev, struct usb_hcd *hcd,
  struct pci_dev *companion, struct usb_hcd *companion_hcd)
{
 if (is_ohci_or_uhci(pdev) && companion->class == CL_EHCI) {
  dev_dbg(&pdev->dev, "FS/LS companion for %s\n",
    dev_name(&companion->dev));
  hcd->self.hs_companion = &companion_hcd->self;
 }
}
