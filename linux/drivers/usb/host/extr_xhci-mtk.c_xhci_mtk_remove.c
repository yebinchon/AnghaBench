
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_mtk {struct usb_hcd* hcd; } ;
struct xhci_hcd {struct usb_hcd* shared_hcd; } ;
struct usb_hcd {int dummy; } ;
struct platform_device {int dev; } ;


 int device_init_wakeup (int *,int) ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 struct xhci_hcd_mtk* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;
 int xhci_mtk_clks_disable (struct xhci_hcd_mtk*) ;
 int xhci_mtk_ldos_disable (struct xhci_hcd_mtk*) ;
 int xhci_mtk_sch_exit (struct xhci_hcd_mtk*) ;

__attribute__((used)) static int xhci_mtk_remove(struct platform_device *dev)
{
 struct xhci_hcd_mtk *mtk = platform_get_drvdata(dev);
 struct usb_hcd *hcd = mtk->hcd;
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);
 struct usb_hcd *shared_hcd = xhci->shared_hcd;

 usb_remove_hcd(shared_hcd);
 xhci->shared_hcd = ((void*)0);
 device_init_wakeup(&dev->dev, 0);

 usb_remove_hcd(hcd);
 usb_put_hcd(shared_hcd);
 usb_put_hcd(hcd);
 xhci_mtk_sch_exit(mtk);
 xhci_mtk_clks_disable(mtk);
 xhci_mtk_ldos_disable(mtk);
 pm_runtime_put_sync(&dev->dev);
 pm_runtime_disable(&dev->dev);

 return 0;
}
