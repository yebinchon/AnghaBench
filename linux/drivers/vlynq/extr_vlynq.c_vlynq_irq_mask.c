
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vlynq_device {int irq_start; TYPE_1__* remote; } ;
struct irq_data {int irq; } ;
struct TYPE_2__ {int * int_device; } ;


 int BUG_ON (int) ;
 int VINT_ENABLE ;
 int VINT_OFFSET (int) ;
 struct vlynq_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void vlynq_irq_mask(struct irq_data *d)
{
 struct vlynq_device *dev = irq_data_get_irq_chip_data(d);
 int virq;
 u32 val;

 BUG_ON(!dev);
 virq = d->irq - dev->irq_start;
 val = readl(&dev->remote->int_device[virq >> 2]);
 val &= ~(VINT_ENABLE << VINT_OFFSET(virq));
 writel(val, &dev->remote->int_device[virq >> 2]);
}
