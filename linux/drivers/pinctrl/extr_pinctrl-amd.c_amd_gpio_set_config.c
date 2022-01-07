
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int ENOTSUPP ;
 scalar_t__ PIN_CONFIG_INPUT_DEBOUNCE ;
 int amd_gpio_set_debounce (struct gpio_chip*,unsigned int,int ) ;
 int pinconf_to_config_argument (unsigned long) ;
 scalar_t__ pinconf_to_config_param (unsigned long) ;

__attribute__((used)) static int amd_gpio_set_config(struct gpio_chip *gc, unsigned offset,
          unsigned long config)
{
 u32 debounce;

 if (pinconf_to_config_param(config) != PIN_CONFIG_INPUT_DEBOUNCE)
  return -ENOTSUPP;

 debounce = pinconf_to_config_argument(config);
 return amd_gpio_set_debounce(gc, offset, debounce);
}
