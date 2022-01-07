
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bcm63xx_udc {int driver; int gadget; } ;


 int BUG_ON (int ) ;
 int bcm63xx_udc_cleanup_debugfs (struct bcm63xx_udc*) ;
 int bcm63xx_uninit_udc_hw (struct bcm63xx_udc*) ;
 struct bcm63xx_udc* platform_get_drvdata (struct platform_device*) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int bcm63xx_udc_remove(struct platform_device *pdev)
{
 struct bcm63xx_udc *udc = platform_get_drvdata(pdev);

 bcm63xx_udc_cleanup_debugfs(udc);
 usb_del_gadget_udc(&udc->gadget);
 BUG_ON(udc->driver);

 bcm63xx_uninit_udc_hw(udc);

 return 0;
}
