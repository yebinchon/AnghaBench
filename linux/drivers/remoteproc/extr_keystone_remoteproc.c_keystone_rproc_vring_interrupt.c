
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keystone_rproc {int workqueue; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t keystone_rproc_vring_interrupt(int irq, void *dev_id)
{
 struct keystone_rproc *ksproc = dev_id;

 schedule_work(&ksproc->workqueue);

 return IRQ_HANDLED;
}
