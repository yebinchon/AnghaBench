
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int mutex; } ;


 int ARRAY_SIZE (unsigned long*) ;
 int gpio_to_pin (struct pinctrl_gpio_range*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pinconf_set_config (struct pinctrl_dev*,int,unsigned long*,int ) ;
 int pinctrl_get_device_gpio_range (unsigned int,struct pinctrl_dev**,struct pinctrl_gpio_range**) ;

int pinctrl_gpio_set_config(unsigned gpio, unsigned long config)
{
 unsigned long configs[] = { config };
 struct pinctrl_gpio_range *range;
 struct pinctrl_dev *pctldev;
 int ret, pin;

 ret = pinctrl_get_device_gpio_range(gpio, &pctldev, &range);
 if (ret)
  return ret;

 mutex_lock(&pctldev->mutex);
 pin = gpio_to_pin(range, gpio);
 ret = pinconf_set_config(pctldev, pin, configs, ARRAY_SIZE(configs));
 mutex_unlock(&pctldev->mutex);

 return ret;
}
