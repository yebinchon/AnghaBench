
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct pxa27x_ohci {int dummy; } ;
struct platform_device {int dev; } ;


 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int pxa27x_ohci_set_vbus_power (struct pxa27x_ohci*,unsigned int,int) ;
 int pxa27x_stop_hc (struct pxa27x_ohci*,int *) ;
 struct pxa27x_ohci* to_pxa27x_ohci (struct usb_hcd*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_pxa27x_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct pxa27x_ohci *pxa_ohci = to_pxa27x_ohci(hcd);
 unsigned int i;

 usb_remove_hcd(hcd);
 pxa27x_stop_hc(pxa_ohci, &pdev->dev);

 for (i = 0; i < 3; ++i)
  pxa27x_ohci_set_vbus_power(pxa_ohci, i, 0);

 usb_put_hcd(hcd);
 return 0;
}
