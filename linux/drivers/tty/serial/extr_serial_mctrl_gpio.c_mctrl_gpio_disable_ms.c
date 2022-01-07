
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mctrl_gpios {int mctrl_on; int * irq; } ;
typedef enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;


 int UART_GPIO_MAX ;
 int disable_irq (int ) ;

void mctrl_gpio_disable_ms(struct mctrl_gpios *gpios)
{
 enum mctrl_gpio_idx i;

 if (gpios == ((void*)0))
  return;

 if (!gpios->mctrl_on)
  return;

 gpios->mctrl_on = 0;

 for (i = 0; i < UART_GPIO_MAX; ++i) {
  if (!gpios->irq[i])
   continue;

  disable_irq(gpios->irq[i]);
 }
}
