
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dev; } ;
struct atmel_ehci_priv {int dummy; } ;


 int atmel_start_clock (struct atmel_ehci_priv*) ;
 int dev_dbg (int *,char*) ;
 struct atmel_ehci_priv* hcd_to_atmel_ehci_priv (struct usb_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void atmel_start_ehci(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct atmel_ehci_priv *atmel_ehci = hcd_to_atmel_ehci_priv(hcd);

 dev_dbg(&pdev->dev, "start\n");
 atmel_start_clock(atmel_ehci);
}
