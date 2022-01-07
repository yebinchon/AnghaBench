
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_mtk {scalar_t__ lpm_support; } ;
struct xhci_hcd {int quirks; } ;
struct usb_hcd {int dummy; } ;
struct device {int dummy; } ;


 int XHCI_LPM_SUPPORT ;
 int XHCI_MTK_HOST ;
 int XHCI_PLAT ;
 int XHCI_SPURIOUS_SUCCESS ;
 struct xhci_hcd_mtk* hcd_to_mtk (struct usb_hcd*) ;
 struct usb_hcd* xhci_to_hcd (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
{
 struct usb_hcd *hcd = xhci_to_hcd(xhci);
 struct xhci_hcd_mtk *mtk = hcd_to_mtk(hcd);






 xhci->quirks |= XHCI_PLAT;
 xhci->quirks |= XHCI_MTK_HOST;




 xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
 if (mtk->lpm_support)
  xhci->quirks |= XHCI_LPM_SUPPORT;
}
