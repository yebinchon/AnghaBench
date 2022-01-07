
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int sx150x_pinctrl_get_group_pins(struct pinctrl_dev *pctldev,
     unsigned int group,
     const unsigned int **pins,
     unsigned int *num_pins)
{
 return -ENOTSUPP;
}
