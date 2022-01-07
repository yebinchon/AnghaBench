
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soctherm_oc_irq_chip_data {int irq_lock; } ;
struct irq_data {int dummy; } ;


 struct soctherm_oc_irq_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void soctherm_oc_irq_lock(struct irq_data *data)
{
 struct soctherm_oc_irq_chip_data *d = irq_data_get_irq_chip_data(data);

 mutex_lock(&d->irq_lock);
}
