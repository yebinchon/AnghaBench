
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_dev {scalar_t__ device; scalar_t__ vendor; int devfn; int bus; } ;
struct ohci_hcd {int flags; } ;


 int OHCI_QUIRK_SUPERIO ;
 int PCI_DEVFN (int ,int) ;
 scalar_t__ PCI_DEVICE_ID_NS_87560_LIO ;
 int PCI_SLOT (int ) ;
 scalar_t__ PCI_VENDOR_ID_NS ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_dbg (struct ohci_hcd*,char*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int ohci_quirk_ns(struct usb_hcd *hcd)
{
 struct pci_dev *pdev = to_pci_dev(hcd->self.controller);
 struct pci_dev *b;

 b = pci_get_slot (pdev->bus, PCI_DEVFN (PCI_SLOT (pdev->devfn), 1));
 if (b && b->device == PCI_DEVICE_ID_NS_87560_LIO
     && b->vendor == PCI_VENDOR_ID_NS) {
  struct ohci_hcd *ohci = hcd_to_ohci (hcd);

  ohci->flags |= OHCI_QUIRK_SUPERIO;
  ohci_dbg (ohci, "Using NSC SuperIO setup\n");
 }
 pci_dev_put(b);

 return 0;
}
