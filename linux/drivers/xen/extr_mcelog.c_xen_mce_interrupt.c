
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;
 int xen_mce_work ;

__attribute__((used)) static irqreturn_t xen_mce_interrupt(int irq, void *dev_id)
{
 schedule_work(&xen_mce_work);
 return IRQ_HANDLED;
}
