
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vudc {int gadget; } ;
struct platform_device {int dummy; } ;


 int cleanup_vudc_hw (struct vudc*) ;
 int kfree (struct vudc*) ;
 struct vudc* platform_get_drvdata (struct platform_device*) ;
 int usb_del_gadget_udc (int *) ;

int vudc_remove(struct platform_device *pdev)
{
 struct vudc *udc = platform_get_drvdata(pdev);

 usb_del_gadget_udc(&udc->gadget);
 cleanup_vudc_hw(udc);
 kfree(udc);
 return 0;
}
