
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int tegra_xhci_quirks ;
 int xhci_gen_setup (struct usb_hcd*,int ) ;

__attribute__((used)) static int tegra_xhci_setup(struct usb_hcd *hcd)
{
 return xhci_gen_setup(hcd, tegra_xhci_quirks);
}
