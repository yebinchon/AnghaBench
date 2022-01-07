
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mctrl_gpios {scalar_t__* gpio; scalar_t__* irq; TYPE_1__* port; } ;
struct device {int dummy; } ;
typedef enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;
struct TYPE_2__ {int dev; } ;


 int UART_GPIO_MAX ;
 int devm_free_irq (int ,scalar_t__,struct mctrl_gpios*) ;
 int devm_gpiod_put (struct device*,scalar_t__) ;
 int devm_kfree (struct device*,struct mctrl_gpios*) ;

void mctrl_gpio_free(struct device *dev, struct mctrl_gpios *gpios)
{
 enum mctrl_gpio_idx i;

 if (gpios == ((void*)0))
  return;

 for (i = 0; i < UART_GPIO_MAX; i++) {
  if (gpios->irq[i])
   devm_free_irq(gpios->port->dev, gpios->irq[i], gpios);

  if (gpios->gpio[i])
   devm_gpiod_put(dev, gpios->gpio[i]);
 }
 devm_kfree(dev, gpios);
}
