
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;


 int hcd_to_uhci (struct usb_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int uhci_hc_died (int ) ;

__attribute__((used)) static void uhci_hcd_grlib_shutdown(struct platform_device *op)
{
 struct usb_hcd *hcd = platform_get_drvdata(op);

 uhci_hc_died(hcd_to_uhci(hcd));
}
