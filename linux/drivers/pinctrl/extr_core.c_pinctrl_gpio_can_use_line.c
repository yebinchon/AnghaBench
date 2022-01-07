
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int mutex; } ;


 int gpio_to_pin (struct pinctrl_gpio_range*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pinctrl_get_device_gpio_range (unsigned int,struct pinctrl_dev**,struct pinctrl_gpio_range**) ;
 int pinmux_can_be_used_for_gpio (struct pinctrl_dev*,int) ;

bool pinctrl_gpio_can_use_line(unsigned gpio)
{
 struct pinctrl_dev *pctldev;
 struct pinctrl_gpio_range *range;
 bool result;
 int pin;






 if (pinctrl_get_device_gpio_range(gpio, &pctldev, &range))
  return 1;

 mutex_lock(&pctldev->mutex);


 pin = gpio_to_pin(range, gpio);

 result = pinmux_can_be_used_for_gpio(pctldev, pin);

 mutex_unlock(&pctldev->mutex);

 return result;
}
