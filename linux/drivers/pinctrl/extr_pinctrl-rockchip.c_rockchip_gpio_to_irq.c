
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pin_bank {int domain; } ;
struct gpio_chip {int dummy; } ;


 int ENXIO ;
 struct rockchip_pin_bank* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int irq_create_mapping (int ,unsigned int) ;

__attribute__((used)) static int rockchip_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct rockchip_pin_bank *bank = gpiochip_get_data(gc);
 unsigned int virq;

 if (!bank->domain)
  return -ENXIO;

 virq = irq_create_mapping(bank->domain, offset);

 return (virq) ? : -ENXIO;
}
