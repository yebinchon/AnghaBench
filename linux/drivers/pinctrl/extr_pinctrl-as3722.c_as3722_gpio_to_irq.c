
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct as3722_pctrl_info {int as3722; } ;


 int as3722_irq_get_virq (int ,unsigned int) ;
 struct as3722_pctrl_info* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int as3722_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct as3722_pctrl_info *as_pci = gpiochip_get_data(chip);

 return as3722_irq_get_virq(as_pci->as3722, offset);
}
