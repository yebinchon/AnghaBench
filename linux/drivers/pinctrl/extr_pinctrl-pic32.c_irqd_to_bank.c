
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_gpio_bank {int dummy; } ;
struct irq_data {int dummy; } ;


 struct pic32_gpio_bank* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static inline struct pic32_gpio_bank *irqd_to_bank(struct irq_data *d)
{
 return gpiochip_get_data(irq_data_get_irq_chip_data(d));
}
