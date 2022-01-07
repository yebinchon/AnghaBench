
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsp_gpio {int irq_domain; } ;
struct gpio_chip {int dummy; } ;


 struct nsp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int irq_linear_revmap (int ,unsigned int) ;

__attribute__((used)) static int nsp_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct nsp_gpio *chip = gpiochip_get_data(gc);

 return irq_linear_revmap(chip->irq_domain, offset);
}
