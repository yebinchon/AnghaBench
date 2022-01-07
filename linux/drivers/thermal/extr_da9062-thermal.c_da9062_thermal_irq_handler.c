
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9062_thermal {int work; int irq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_freezable_wq ;

__attribute__((used)) static irqreturn_t da9062_thermal_irq_handler(int irq, void *data)
{
 struct da9062_thermal *thermal = data;

 disable_irq_nosync(thermal->irq);
 queue_delayed_work(system_freezable_wq, &thermal->work, 0);

 return IRQ_HANDLED;
}
