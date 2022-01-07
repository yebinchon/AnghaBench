
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14656_chip {int irq_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t max14656_irq(int irq, void *dev_id)
{
 struct max14656_chip *chip = dev_id;

 schedule_delayed_work(&chip->irq_work, msecs_to_jiffies(100));

 return IRQ_HANDLED;
}
