
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;

 int pinconf_to_config_param (unsigned long) ;
 int rockchip_gpio_set_debounce (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int rockchip_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
      unsigned long config)
{
 enum pin_config_param param = pinconf_to_config_param(config);

 switch (param) {
 case 128:
  rockchip_gpio_set_debounce(gc, offset, 1);
  return -ENOTSUPP;
 default:
  return -ENOTSUPP;
 }
}
