
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nmk_gpio_chip {int bank; int (* get_latent_status ) (int ) ;} ;
struct irq_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int __nmk_gpio_irq_handler (struct irq_desc*,int ) ;
 struct nmk_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_desc_get_handler_data (struct irq_desc*) ;
 int stub1 (int ) ;

__attribute__((used)) static void nmk_gpio_latent_irq_handler(struct irq_desc *desc)
{
 struct gpio_chip *chip = irq_desc_get_handler_data(desc);
 struct nmk_gpio_chip *nmk_chip = gpiochip_get_data(chip);
 u32 status = nmk_chip->get_latent_status(nmk_chip->bank);

 __nmk_gpio_irq_handler(desc, status);
}
