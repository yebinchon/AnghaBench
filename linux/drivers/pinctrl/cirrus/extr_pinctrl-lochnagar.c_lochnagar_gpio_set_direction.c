
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int lochnagar_gpio_set_direction(struct pinctrl_dev *pctldev,
     struct pinctrl_gpio_range *range,
     unsigned int offset,
     bool input)
{

 if (input)
  return -EINVAL;

 return 0;
}
