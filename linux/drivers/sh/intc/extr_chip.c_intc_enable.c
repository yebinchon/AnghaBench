
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int _intc_enable (struct irq_data*,unsigned long) ;
 scalar_t__ irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void intc_enable(struct irq_data *data)
{
 _intc_enable(data, (unsigned long)irq_data_get_irq_chip_data(data));
}
