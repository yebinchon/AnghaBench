
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct lp8788_charger {int num_irqs; TYPE_1__* irqs; } ;
struct TYPE_2__ {int virq; } ;


 int free_irq (int,struct lp8788_charger*) ;

__attribute__((used)) static void lp8788_irq_unregister(struct platform_device *pdev,
      struct lp8788_charger *pchg)
{
 int i;
 int irq;

 for (i = 0; i < pchg->num_irqs; i++) {
  irq = pchg->irqs[i].virq;
  if (!irq)
   continue;

  free_irq(irq, pchg);
 }
}
