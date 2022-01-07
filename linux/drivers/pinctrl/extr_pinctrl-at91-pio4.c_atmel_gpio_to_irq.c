
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct atmel_pioctrl {int irq_domain; } ;


 struct atmel_pioctrl* gpiochip_get_data (struct gpio_chip*) ;
 int irq_find_mapping (int ,unsigned int) ;

__attribute__((used)) static int atmel_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct atmel_pioctrl *atmel_pioctrl = gpiochip_get_data(chip);

 return irq_find_mapping(atmel_pioctrl->irq_domain, offset);
}
