
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int xhci_rcar_download_firmware (struct usb_hcd*) ;
 int xhci_rcar_start (struct usb_hcd*) ;

int xhci_rcar_resume_quirk(struct usb_hcd *hcd)
{
 int ret;

 ret = xhci_rcar_download_firmware(hcd);
 if (!ret)
  xhci_rcar_start(hcd);

 return ret;
}
