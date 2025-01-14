
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_mtk {int dummy; } ;
struct usb_hcd {int dummy; } ;


 struct xhci_hcd_mtk* hcd_to_mtk (struct usb_hcd*) ;
 scalar_t__ usb_hcd_is_primary_hcd (struct usb_hcd*) ;
 int xhci_gen_setup (struct usb_hcd*,int ) ;
 int xhci_mtk_quirks ;
 int xhci_mtk_sch_init (struct xhci_hcd_mtk*) ;
 int xhci_mtk_ssusb_config (struct xhci_hcd_mtk*) ;

__attribute__((used)) static int xhci_mtk_setup(struct usb_hcd *hcd)
{
 struct xhci_hcd_mtk *mtk = hcd_to_mtk(hcd);
 int ret;

 if (usb_hcd_is_primary_hcd(hcd)) {
  ret = xhci_mtk_ssusb_config(mtk);
  if (ret)
   return ret;
 }

 ret = xhci_gen_setup(hcd, xhci_mtk_quirks);
 if (ret)
  return ret;

 if (usb_hcd_is_primary_hcd(hcd)) {
  ret = xhci_mtk_sch_init(mtk);
  if (ret)
   return ret;
 }

 return ret;
}
