
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pinctrl_gpio_direction (unsigned int,int) ;

int pinctrl_gpio_direction_output(unsigned gpio)
{
 return pinctrl_gpio_direction(gpio, 0);
}
