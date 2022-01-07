
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int armada_37xx_update_reg (unsigned int*,int*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static inline void armada_37xx_irq_update_reg(unsigned int *reg,
       struct irq_data *d)
{
 int offset = irqd_to_hwirq(d);

 armada_37xx_update_reg(reg, &offset);
}
