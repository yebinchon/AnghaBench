
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int node; } ;
struct pinctrl_dev {int mutex; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void pinctrl_remove_gpio_range(struct pinctrl_dev *pctldev,
          struct pinctrl_gpio_range *range)
{
 mutex_lock(&pctldev->mutex);
 list_del(&range->node);
 mutex_unlock(&pctldev->mutex);
}
