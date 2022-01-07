
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct spear_ohci {scalar_t__ clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (scalar_t__) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 struct spear_ohci* to_spear_ohci (struct usb_hcd*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int spear_ohci_hcd_drv_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct spear_ohci *sohci_p = to_spear_ohci(hcd);

 usb_remove_hcd(hcd);
 if (sohci_p->clk)
  clk_disable_unprepare(sohci_p->clk);

 usb_put_hcd(hcd);
 return 0;
}
