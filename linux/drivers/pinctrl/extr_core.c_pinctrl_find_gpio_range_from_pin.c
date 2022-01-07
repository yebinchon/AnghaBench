
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pinctrl_gpio_range* pinctrl_find_gpio_range_from_pin_nolock (struct pinctrl_dev*,unsigned int) ;

struct pinctrl_gpio_range *
pinctrl_find_gpio_range_from_pin(struct pinctrl_dev *pctldev,
     unsigned int pin)
{
 struct pinctrl_gpio_range *range;

 mutex_lock(&pctldev->mutex);
 range = pinctrl_find_gpio_range_from_pin_nolock(pctldev, pin);
 mutex_unlock(&pctldev->mutex);

 return range;
}
