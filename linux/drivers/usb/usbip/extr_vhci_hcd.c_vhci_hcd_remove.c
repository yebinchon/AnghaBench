
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci {int * vhci_hcd_ss; int * vhci_hcd_hs; } ;
struct platform_device {int dev; } ;


 scalar_t__ dev_get_platdata (int *) ;
 int usb_put_hcd (int ) ;
 int usb_remove_hcd (int ) ;
 int vhci_hcd_to_hcd (int *) ;

__attribute__((used)) static int vhci_hcd_remove(struct platform_device *pdev)
{
 struct vhci *vhci = *((void **)dev_get_platdata(&pdev->dev));






 usb_remove_hcd(vhci_hcd_to_hcd(vhci->vhci_hcd_ss));
 usb_put_hcd(vhci_hcd_to_hcd(vhci->vhci_hcd_ss));

 usb_remove_hcd(vhci_hcd_to_hcd(vhci->vhci_hcd_hs));
 usb_put_hcd(vhci_hcd_to_hcd(vhci->vhci_hcd_hs));

 vhci->vhci_hcd_hs = ((void*)0);
 vhci->vhci_hcd_ss = ((void*)0);

 return 0;
}
