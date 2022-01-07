
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp8788_charger {int num_irqs; TYPE_1__* irqs; } ;
struct TYPE_2__ {int virq; int which; } ;



__attribute__((used)) static bool lp8788_find_irq_id(struct lp8788_charger *pchg, int virq, int *id)
{
 bool found = 0;
 int i;

 for (i = 0; i < pchg->num_irqs; i++) {
  if (pchg->irqs[i].virq == virq) {
   *id = pchg->irqs[i].which;
   found = 1;
   break;
  }
 }

 return found;
}
