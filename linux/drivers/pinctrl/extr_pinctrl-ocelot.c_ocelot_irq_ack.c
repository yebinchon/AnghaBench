
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_pinctrl {int map; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int OCELOT_GPIO_INTR ;
 int REG (int ,struct ocelot_pinctrl*,unsigned int) ;
 struct ocelot_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ocelot_irq_ack(struct irq_data *data)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct ocelot_pinctrl *info = gpiochip_get_data(chip);
 unsigned int gpio = irqd_to_hwirq(data);

 regmap_write_bits(info->map, REG(OCELOT_GPIO_INTR, info, gpio),
     BIT(gpio % 32), BIT(gpio % 32));
}
