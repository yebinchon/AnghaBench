
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {scalar_t__ irq_requested; } ;


 int free_irq (int,struct hvc_struct*) ;

void notifier_del_irq(struct hvc_struct *hp, int irq)
{
 if (!hp->irq_requested)
  return;
 free_irq(irq, hp);
 hp->irq_requested = 0;
}
