
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ehci_hcd_xilinx_of_remove(struct platform_device *op)
{
 struct usb_hcd *hcd = platform_get_drvdata(op);

 dev_dbg(&op->dev, "stopping XILINX-OF USB Controller\n");

 usb_remove_hcd(hcd);

 usb_put_hcd(hcd);

 return 0;
}
