
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int xhci_priv_plat_start (struct usb_hcd*) ;
 int xhci_run (struct usb_hcd*) ;

__attribute__((used)) static int xhci_plat_start(struct usb_hcd *hcd)
{
 xhci_priv_plat_start(hcd);
 return xhci_run(hcd);
}
