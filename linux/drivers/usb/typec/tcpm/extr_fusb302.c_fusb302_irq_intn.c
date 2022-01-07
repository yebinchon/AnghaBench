
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int irq_while_suspended; int irq_lock; int irq_work; scalar_t__ irq_suspended; int gpio_int_n_irq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t fusb302_irq_intn(int irq, void *dev_id)
{
 struct fusb302_chip *chip = dev_id;
 unsigned long flags;


 disable_irq_nosync(chip->gpio_int_n_irq);

 spin_lock_irqsave(&chip->irq_lock, flags);
 if (chip->irq_suspended)
  chip->irq_while_suspended = 1;
 else
  schedule_work(&chip->irq_work);
 spin_unlock_irqrestore(&chip->irq_lock, flags);

 return IRQ_HANDLED;
}
