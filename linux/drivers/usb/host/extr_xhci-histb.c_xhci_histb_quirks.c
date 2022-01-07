
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int quirks; } ;
struct device {int dummy; } ;


 int XHCI_PLAT ;

__attribute__((used)) static void xhci_histb_quirks(struct device *dev, struct xhci_hcd *xhci)
{





 xhci->quirks |= XHCI_PLAT;
}
