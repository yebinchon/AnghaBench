
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;
struct fotg210_hcd {int pclk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 struct fotg210_hcd* hcd_to_fotg210 (struct usb_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int fotg210_hcd_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct fotg210_hcd *fotg210 = hcd_to_fotg210(hcd);

 if (!IS_ERR(fotg210->pclk))
  clk_disable_unprepare(fotg210->pclk);

 usb_remove_hcd(hcd);
 usb_put_hcd(hcd);

 return 0;
}
