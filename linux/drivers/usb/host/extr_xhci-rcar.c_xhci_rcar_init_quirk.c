
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int regs; } ;


 int ETIMEDOUT ;
 int xhci_rcar_download_firmware (struct usb_hcd*) ;
 int xhci_rcar_wait_for_pll_active (struct usb_hcd*) ;

int xhci_rcar_init_quirk(struct usb_hcd *hcd)
{

 if (!hcd->regs)
  return 0;

 if (!xhci_rcar_wait_for_pll_active(hcd))
  return -ETIMEDOUT;

 return xhci_rcar_download_firmware(hcd);
}
