
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; int mask; } ;


 int BIT (int) ;
 int GPIO_PER_REG ;
 int armada_37xx_irq_unmask (struct irq_data*) ;

__attribute__((used)) static unsigned int armada_37xx_irq_startup(struct irq_data *d)
{






 d->mask = BIT(d->hwirq % GPIO_PER_REG);

 armada_37xx_irq_unmask(d);

 return 0;
}
