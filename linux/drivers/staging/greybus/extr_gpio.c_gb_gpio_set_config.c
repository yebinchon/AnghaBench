
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct gpio_chip {int dummy; } ;
struct gb_gpio_controller {int dummy; } ;


 int EINVAL ;
 int ENOTSUPP ;
 scalar_t__ PIN_CONFIG_INPUT_DEBOUNCE ;
 scalar_t__ U16_MAX ;
 int gb_gpio_set_debounce_operation (struct gb_gpio_controller*,int ,int ) ;
 struct gb_gpio_controller* gpio_chip_to_gb_gpio_controller (struct gpio_chip*) ;
 scalar_t__ pinconf_to_config_argument (unsigned long) ;
 scalar_t__ pinconf_to_config_param (unsigned long) ;

__attribute__((used)) static int gb_gpio_set_config(struct gpio_chip *chip, unsigned int offset,
         unsigned long config)
{
 struct gb_gpio_controller *ggc = gpio_chip_to_gb_gpio_controller(chip);
 u32 debounce;

 if (pinconf_to_config_param(config) != PIN_CONFIG_INPUT_DEBOUNCE)
  return -ENOTSUPP;

 debounce = pinconf_to_config_argument(config);
 if (debounce > U16_MAX)
  return -EINVAL;

 return gb_gpio_set_debounce_operation(ggc, (u8)offset, (u16)debounce);
}
