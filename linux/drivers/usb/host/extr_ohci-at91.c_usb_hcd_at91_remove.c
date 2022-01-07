
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;


 int at91_stop_hc (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static void usb_hcd_at91_remove(struct usb_hcd *hcd,
    struct platform_device *pdev)
{
 usb_remove_hcd(hcd);
 at91_stop_hc(pdev);
 usb_put_hcd(hcd);
}
