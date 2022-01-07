
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mctrl_gpios {scalar_t__* gpio; } ;
typedef enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;
struct TYPE_2__ {unsigned int mctrl; } ;


 int UART_GPIO_MAX ;
 scalar_t__ gpiod_get_value (scalar_t__) ;
 int mctrl_gpio_flags_is_dir_out (int) ;
 TYPE_1__* mctrl_gpios_desc ;

unsigned int mctrl_gpio_get(struct mctrl_gpios *gpios, unsigned int *mctrl)
{
 enum mctrl_gpio_idx i;

 if (gpios == ((void*)0))
  return *mctrl;

 for (i = 0; i < UART_GPIO_MAX; i++) {
  if (gpios->gpio[i] && !mctrl_gpio_flags_is_dir_out(i)) {
   if (gpiod_get_value(gpios->gpio[i]))
    *mctrl |= mctrl_gpios_desc[i].mctrl;
   else
    *mctrl &= ~mctrl_gpios_desc[i].mctrl;
  }
 }

 return *mctrl;
}
