
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;
struct orion_ehci_hcd {int clk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 struct orion_ehci_hcd* hcd_to_orion_priv (struct usb_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ehci_orion_drv_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct orion_ehci_hcd *priv = hcd_to_orion_priv(hcd);

 usb_remove_hcd(hcd);

 if (!IS_ERR(priv->clk))
  clk_disable_unprepare(priv->clk);

 usb_put_hcd(hcd);

 return 0;
}
