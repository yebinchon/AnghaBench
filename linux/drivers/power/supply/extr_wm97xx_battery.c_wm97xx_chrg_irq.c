
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bat_work ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t wm97xx_chrg_irq(int irq, void *data)
{
 schedule_work(&bat_work);
 return IRQ_HANDLED;
}
