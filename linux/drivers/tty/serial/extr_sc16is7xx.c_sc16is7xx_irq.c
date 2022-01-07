
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc16is7xx_port {int irq_work; int kworker; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int kthread_queue_work (int *,int *) ;

__attribute__((used)) static irqreturn_t sc16is7xx_irq(int irq, void *dev_id)
{
 struct sc16is7xx_port *s = (struct sc16is7xx_port *)dev_id;

 kthread_queue_work(&s->kworker, &s->irq_work);

 return IRQ_HANDLED;
}
