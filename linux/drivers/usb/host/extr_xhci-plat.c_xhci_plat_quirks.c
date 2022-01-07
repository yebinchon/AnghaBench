
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_plat_priv {int quirks; } ;
struct xhci_hcd {int quirks; } ;
struct device {int dummy; } ;


 int XHCI_PLAT ;
 struct xhci_plat_priv* xhci_to_priv (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_plat_quirks(struct device *dev, struct xhci_hcd *xhci)
{
 struct xhci_plat_priv *priv = xhci_to_priv(xhci);






 xhci->quirks |= XHCI_PLAT | priv->quirks;
}
