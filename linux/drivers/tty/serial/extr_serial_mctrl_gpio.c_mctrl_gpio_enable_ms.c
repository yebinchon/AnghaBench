
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mctrl_gpios {int mctrl_on; int * irq; int mctrl_prev; } ;
typedef enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;


 int UART_GPIO_MAX ;
 int enable_irq (int ) ;
 int mctrl_gpio_get (struct mctrl_gpios*,int *) ;

void mctrl_gpio_enable_ms(struct mctrl_gpios *gpios)
{
 enum mctrl_gpio_idx i;

 if (gpios == ((void*)0))
  return;


 if (gpios->mctrl_on)
  return;

 gpios->mctrl_on = 1;


 mctrl_gpio_get(gpios, &gpios->mctrl_prev);

 for (i = 0; i < UART_GPIO_MAX; ++i) {
  if (!gpios->irq[i])
   continue;

  enable_irq(gpios->irq[i]);
 }
}
