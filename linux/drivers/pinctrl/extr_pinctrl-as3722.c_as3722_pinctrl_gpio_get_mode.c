
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AS3722_GPIO_MODE_HIGH_IMPED ;
 int AS3722_GPIO_MODE_INPUT ;
 int AS3722_GPIO_MODE_INPUT_PULL_DOWN ;
 int AS3722_GPIO_MODE_INPUT_PULL_UP ;
 int AS3722_GPIO_MODE_IO_OPEN_DRAIN ;
 int AS3722_GPIO_MODE_IO_OPEN_DRAIN_PULL_UP ;
 unsigned int AS3722_GPIO_MODE_OPEN_DRAIN ;
 int AS3722_GPIO_MODE_OUTPUT_VDDH ;
 int AS3722_GPIO_MODE_OUTPUT_VDDL ;
 unsigned int AS3722_GPIO_MODE_PULL_DOWN ;
 unsigned int AS3722_GPIO_MODE_PULL_UP ;
 int EINVAL ;

__attribute__((used)) static int as3722_pinctrl_gpio_get_mode(unsigned gpio_mode_prop, bool input)
{
 if (gpio_mode_prop & AS3722_GPIO_MODE_HIGH_IMPED)
  return -EINVAL;

 if (gpio_mode_prop & AS3722_GPIO_MODE_OPEN_DRAIN) {
  if (gpio_mode_prop & AS3722_GPIO_MODE_PULL_UP)
   return AS3722_GPIO_MODE_IO_OPEN_DRAIN_PULL_UP;
  return AS3722_GPIO_MODE_IO_OPEN_DRAIN;
 }
 if (input) {
  if (gpio_mode_prop & AS3722_GPIO_MODE_PULL_UP)
   return AS3722_GPIO_MODE_INPUT_PULL_UP;
  else if (gpio_mode_prop & AS3722_GPIO_MODE_PULL_DOWN)
   return AS3722_GPIO_MODE_INPUT_PULL_DOWN;
  return AS3722_GPIO_MODE_INPUT;
 }
 if (gpio_mode_prop & AS3722_GPIO_MODE_PULL_DOWN)
  return AS3722_GPIO_MODE_OUTPUT_VDDL;
 return AS3722_GPIO_MODE_OUTPUT_VDDH;
}
