
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int irq_suspended; int irq_work; int irq_lock; } ;
struct device {struct fusb302_chip* driver_data; } ;


 int flush_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fusb302_pm_suspend(struct device *dev)
{
 struct fusb302_chip *chip = dev->driver_data;
 unsigned long flags;

 spin_lock_irqsave(&chip->irq_lock, flags);
 chip->irq_suspended = 1;
 spin_unlock_irqrestore(&chip->irq_lock, flags);


 flush_work(&chip->irq_work);
 return 0;
}
