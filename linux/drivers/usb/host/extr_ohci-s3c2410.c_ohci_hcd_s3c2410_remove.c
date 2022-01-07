
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;


 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int s3c2410_stop_hc (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int
ohci_hcd_s3c2410_remove(struct platform_device *dev)
{
 struct usb_hcd *hcd = platform_get_drvdata(dev);

 usb_remove_hcd(hcd);
 s3c2410_stop_hc(dev);
 usb_put_hcd(hcd);
 return 0;
}
