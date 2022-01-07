
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct at91_udc {int lock; } ;


 struct at91_udc* platform_get_drvdata (struct platform_device*) ;
 int pullup (struct at91_udc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void at91udc_shutdown(struct platform_device *dev)
{
 struct at91_udc *udc = platform_get_drvdata(dev);
 unsigned long flags;


 spin_lock_irqsave(&udc->lock, flags);
 pullup(platform_get_drvdata(dev), 0);
 spin_unlock_irqrestore(&udc->lock, flags);
}
