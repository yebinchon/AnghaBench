
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1305 {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t ds1305_irq(int irq, void *p)
{
 struct ds1305 *ds1305 = p;

 disable_irq(irq);
 schedule_work(&ds1305->work);
 return IRQ_HANDLED;
}
