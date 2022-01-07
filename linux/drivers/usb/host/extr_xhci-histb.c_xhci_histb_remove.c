
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_histb {struct usb_hcd* hcd; } ;
struct xhci_hcd {struct usb_hcd* shared_hcd; int xhc_state; } ;
struct usb_hcd {int dummy; } ;
struct platform_device {int dev; } ;


 int XHCI_STATE_REMOVING ;
 int device_wakeup_disable (int *) ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 struct xhci_hcd_histb* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;
 int xhci_histb_host_disable (struct xhci_hcd_histb*) ;

__attribute__((used)) static int xhci_histb_remove(struct platform_device *dev)
{
 struct xhci_hcd_histb *histb = platform_get_drvdata(dev);
 struct usb_hcd *hcd = histb->hcd;
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);
 struct usb_hcd *shared_hcd = xhci->shared_hcd;

 xhci->xhc_state |= XHCI_STATE_REMOVING;

 usb_remove_hcd(shared_hcd);
 xhci->shared_hcd = ((void*)0);
 device_wakeup_disable(&dev->dev);

 usb_remove_hcd(hcd);
 usb_put_hcd(shared_hcd);

 xhci_histb_host_disable(histb);
 usb_put_hcd(hcd);
 pm_runtime_put_sync(&dev->dev);
 pm_runtime_disable(&dev->dev);

 return 0;
}
