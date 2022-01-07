
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;
struct ehci_sh_priv {int iclk; int fclk; struct usb_hcd* hcd; } ;


 int clk_disable (int ) ;
 struct ehci_sh_priv* platform_get_drvdata (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ehci_hcd_sh_remove(struct platform_device *pdev)
{
 struct ehci_sh_priv *priv = platform_get_drvdata(pdev);
 struct usb_hcd *hcd = priv->hcd;

 usb_remove_hcd(hcd);
 usb_put_hcd(hcd);

 clk_disable(priv->fclk);
 clk_disable(priv->iclk);

 return 0;
}
