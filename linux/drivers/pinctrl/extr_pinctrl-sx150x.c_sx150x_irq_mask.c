
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int masked; } ;
struct sx150x_pinctrl {TYPE_1__ irq; } ;
struct irq_data {unsigned int hwirq; } ;


 int BIT (unsigned int) ;
 struct sx150x_pinctrl* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void sx150x_irq_mask(struct irq_data *d)
{
 struct sx150x_pinctrl *pctl =
   gpiochip_get_data(irq_data_get_irq_chip_data(d));
 unsigned int n = d->hwirq;

 pctl->irq.masked |= BIT(n);
}
