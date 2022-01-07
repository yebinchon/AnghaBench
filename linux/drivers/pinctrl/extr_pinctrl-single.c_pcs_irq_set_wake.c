
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int pcs_irq_mask (struct irq_data*) ;
 int pcs_irq_unmask (struct irq_data*) ;

__attribute__((used)) static int pcs_irq_set_wake(struct irq_data *d, unsigned int state)
{
 if (state)
  pcs_irq_unmask(d);
 else
  pcs_irq_mask(d);

 return 0;
}
