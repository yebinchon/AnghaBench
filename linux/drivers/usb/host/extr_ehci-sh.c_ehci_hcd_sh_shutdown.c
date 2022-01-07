
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct platform_device {int dummy; } ;
struct ehci_sh_priv {struct usb_hcd* hcd; } ;
struct TYPE_2__ {int (* shutdown ) (struct usb_hcd*) ;} ;


 struct ehci_sh_priv* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct usb_hcd*) ;

__attribute__((used)) static void ehci_hcd_sh_shutdown(struct platform_device *pdev)
{
 struct ehci_sh_priv *priv = platform_get_drvdata(pdev);
 struct usb_hcd *hcd = priv->hcd;

 if (hcd->driver->shutdown)
  hcd->driver->shutdown(hcd);
}
