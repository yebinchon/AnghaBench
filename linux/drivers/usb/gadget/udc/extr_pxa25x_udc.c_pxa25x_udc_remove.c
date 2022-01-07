
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa25x_udc {int * transceiver; scalar_t__ pullup; int gadget; scalar_t__ driver; } ;
struct platform_device {int dummy; } ;


 int EBUSY ;
 int IS_ERR_OR_NULL (int *) ;
 struct pxa25x_udc* platform_get_drvdata (struct platform_device*) ;
 int pullup (struct pxa25x_udc*) ;
 int remove_debug_files (struct pxa25x_udc*) ;
 int * the_controller ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int pxa25x_udc_remove(struct platform_device *pdev)
{
 struct pxa25x_udc *dev = platform_get_drvdata(pdev);

 if (dev->driver)
  return -EBUSY;

 usb_del_gadget_udc(&dev->gadget);
 dev->pullup = 0;
 pullup(dev);

 remove_debug_files(dev);

 if (!IS_ERR_OR_NULL(dev->transceiver))
  dev->transceiver = ((void*)0);

 the_controller = ((void*)0);
 return 0;
}
