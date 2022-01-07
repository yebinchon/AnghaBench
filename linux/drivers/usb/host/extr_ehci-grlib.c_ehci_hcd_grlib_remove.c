
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int irq; } ;
struct platform_device {int dev; } ;


 int dev_dbg (int *,char*) ;
 int irq_dispose_mapping (int ) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ehci_hcd_grlib_remove(struct platform_device *op)
{
 struct usb_hcd *hcd = platform_get_drvdata(op);

 dev_dbg(&op->dev, "stopping GRLIB GRUSBHC EHCI USB Controller\n");

 usb_remove_hcd(hcd);

 irq_dispose_mapping(hcd->irq);

 usb_put_hcd(hcd);

 return 0;
}
