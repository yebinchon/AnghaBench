
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmfx_pinctrl {int lock; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct stmfx_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void stmfx_pinctrl_irq_bus_lock(struct irq_data *data)
{
 struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
 struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);

 mutex_lock(&pctl->lock);
}
