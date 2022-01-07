
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int irq_while_suspended; int irq_suspended; int irq_lock; int irq_work; } ;
struct device {struct fusb302_chip* driver_data; } ;


 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fusb302_pm_resume(struct device *dev)
{
 struct fusb302_chip *chip = dev->driver_data;
 unsigned long flags;

 spin_lock_irqsave(&chip->irq_lock, flags);
 if (chip->irq_while_suspended) {
  schedule_work(&chip->irq_work);
  chip->irq_while_suspended = 0;
 }
 chip->irq_suspended = 0;
 spin_unlock_irqrestore(&chip->irq_lock, flags);

 return 0;
}
