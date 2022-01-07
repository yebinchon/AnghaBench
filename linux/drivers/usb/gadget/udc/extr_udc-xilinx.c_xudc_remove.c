
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xusb_udc {int gadget; } ;
struct platform_device {int dummy; } ;


 struct xusb_udc* platform_get_drvdata (struct platform_device*) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int xudc_remove(struct platform_device *pdev)
{
 struct xusb_udc *udc = platform_get_drvdata(pdev);

 usb_del_gadget_udc(&udc->gadget);

 return 0;
}
