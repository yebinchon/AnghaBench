
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int mutex; } ;


 int gpio_to_pin (struct pinctrl_gpio_range*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pinctrl_get_device_gpio_range (unsigned int,struct pinctrl_dev**,struct pinctrl_gpio_range**) ;
 int pinmux_gpio_direction (struct pinctrl_dev*,struct pinctrl_gpio_range*,int,int) ;

__attribute__((used)) static int pinctrl_gpio_direction(unsigned gpio, bool input)
{
 struct pinctrl_dev *pctldev;
 struct pinctrl_gpio_range *range;
 int ret;
 int pin;

 ret = pinctrl_get_device_gpio_range(gpio, &pctldev, &range);
 if (ret) {
  return ret;
 }

 mutex_lock(&pctldev->mutex);


 pin = gpio_to_pin(range, gpio);
 ret = pinmux_gpio_direction(pctldev, range, pin, input);

 mutex_unlock(&pctldev->mutex);

 return ret;
}
