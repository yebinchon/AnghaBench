
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_plat_priv {int (* plat_start ) (struct usb_hcd*) ;} ;
struct usb_hcd {int dummy; } ;


 struct xhci_plat_priv* hcd_to_xhci_priv (struct usb_hcd*) ;
 int stub1 (struct usb_hcd*) ;

__attribute__((used)) static void xhci_priv_plat_start(struct usb_hcd *hcd)
{
 struct xhci_plat_priv *priv = hcd_to_xhci_priv(hcd);

 if (priv->plat_start)
  priv->plat_start(hcd);
}
