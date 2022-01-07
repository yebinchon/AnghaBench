
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx150x_pinctrl {int lock; } ;
struct irq_data {int dummy; } ;


 struct sx150x_pinctrl* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void sx150x_irq_bus_lock(struct irq_data *d)
{
 struct sx150x_pinctrl *pctl =
   gpiochip_get_data(irq_data_get_irq_chip_data(d));

 mutex_lock(&pctl->lock);
}
