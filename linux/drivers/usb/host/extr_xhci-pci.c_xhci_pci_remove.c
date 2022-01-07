
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int quirks; int * shared_hcd; int xhc_state; } ;
struct pci_dev {int dev; } ;


 int PCI_D3hot ;
 int XHCI_DEFAULT_PM_RUNTIME_ALLOW ;
 int XHCI_SPURIOUS_WAKEUP ;
 int XHCI_STATE_REMOVING ;
 struct xhci_hcd* hcd_to_xhci (int ) ;
 int pci_get_drvdata (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pm_runtime_forbid (int *) ;
 int usb_hcd_pci_remove (struct pci_dev*) ;
 int usb_put_hcd (int *) ;
 int usb_remove_hcd (int *) ;

__attribute__((used)) static void xhci_pci_remove(struct pci_dev *dev)
{
 struct xhci_hcd *xhci;

 xhci = hcd_to_xhci(pci_get_drvdata(dev));
 xhci->xhc_state |= XHCI_STATE_REMOVING;

 if (xhci->quirks & XHCI_DEFAULT_PM_RUNTIME_ALLOW)
  pm_runtime_forbid(&dev->dev);

 if (xhci->shared_hcd) {
  usb_remove_hcd(xhci->shared_hcd);
  usb_put_hcd(xhci->shared_hcd);
  xhci->shared_hcd = ((void*)0);
 }


 if (xhci->quirks & XHCI_SPURIOUS_WAKEUP)
  pci_set_power_state(dev, PCI_D3hot);

 usb_hcd_pci_remove(dev);
}
