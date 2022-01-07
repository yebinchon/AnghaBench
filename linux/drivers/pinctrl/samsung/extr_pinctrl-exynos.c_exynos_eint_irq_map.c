
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pin_bank {TYPE_1__* irq_chip; } ;
struct irq_domain {struct samsung_pin_bank* host_data; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int chip; } ;


 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct samsung_pin_bank*) ;

__attribute__((used)) static int exynos_eint_irq_map(struct irq_domain *h, unsigned int virq,
     irq_hw_number_t hw)
{
 struct samsung_pin_bank *b = h->host_data;

 irq_set_chip_data(virq, b);
 irq_set_chip_and_handler(virq, &b->irq_chip->chip,
     handle_level_irq);
 return 0;
}
