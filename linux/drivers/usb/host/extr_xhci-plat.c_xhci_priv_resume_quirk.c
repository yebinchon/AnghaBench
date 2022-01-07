
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_plat_priv {int (* resume_quirk ) (struct usb_hcd*) ;} ;
struct usb_hcd {int dummy; } ;


 struct xhci_plat_priv* hcd_to_xhci_priv (struct usb_hcd*) ;
 int stub1 (struct usb_hcd*) ;

__attribute__((used)) static int xhci_priv_resume_quirk(struct usb_hcd *hcd)
{
 struct xhci_plat_priv *priv = hcd_to_xhci_priv(hcd);

 if (!priv->resume_quirk)
  return 0;

 return priv->resume_quirk(hcd);
}
