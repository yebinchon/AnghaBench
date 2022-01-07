
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;
struct pci_dev {int dummy; } ;


 int pci_set_mwi (struct pci_dev*) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;

__attribute__((used)) static int xhci_pci_reinit(struct xhci_hcd *xhci, struct pci_dev *pdev)
{







 if (!pci_set_mwi(pdev))
  xhci_dbg(xhci, "MWI active\n");

 xhci_dbg(xhci, "Finished xhci_pci_reinit\n");
 return 0;
}
