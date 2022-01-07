
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int s3c64xx_eint0_irq_set_mask (struct irq_data*,int) ;

__attribute__((used)) static void s3c64xx_eint0_irq_unmask(struct irq_data *irqd)
{
 s3c64xx_eint0_irq_set_mask(irqd, 0);
}
