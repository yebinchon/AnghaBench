
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mctrl_gpios {int dummy; } ;
struct gpio_desc {int dummy; } ;
typedef enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;



__attribute__((used)) static inline
struct gpio_desc *mctrl_gpio_to_gpiod(struct mctrl_gpios *gpios,
          enum mctrl_gpio_idx gidx)
{
 return ((void*)0);
}
