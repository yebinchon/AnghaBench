
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soctherm_oc_irq_chip_data {int irq_enable; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 struct soctherm_oc_irq_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void soctherm_oc_irq_enable(struct irq_data *data)
{
 struct soctherm_oc_irq_chip_data *d = irq_data_get_irq_chip_data(data);

 d->irq_enable |= BIT(data->hwirq);
}
