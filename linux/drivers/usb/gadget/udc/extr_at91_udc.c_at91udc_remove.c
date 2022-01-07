
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct at91_udc {int iclk; int fclk; int lock; scalar_t__ driver; int gadget; } ;


 int DBG (char*) ;
 int EBUSY ;
 int clk_unprepare (int ) ;
 int device_init_wakeup (int *,int ) ;
 struct at91_udc* platform_get_drvdata (struct platform_device*) ;
 int pullup (struct at91_udc*,int ) ;
 int remove_debug_file (struct at91_udc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int at91udc_remove(struct platform_device *pdev)
{
 struct at91_udc *udc = platform_get_drvdata(pdev);
 unsigned long flags;

 DBG("remove\n");

 usb_del_gadget_udc(&udc->gadget);
 if (udc->driver)
  return -EBUSY;

 spin_lock_irqsave(&udc->lock, flags);
 pullup(udc, 0);
 spin_unlock_irqrestore(&udc->lock, flags);

 device_init_wakeup(&pdev->dev, 0);
 remove_debug_file(udc);
 clk_unprepare(udc->fclk);
 clk_unprepare(udc->iclk);

 return 0;
}
