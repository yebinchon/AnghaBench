
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int armada_37xx_pin_config_group_set(struct pinctrl_dev *pctldev,
       unsigned int selector, unsigned long *configs,
       unsigned int num_configs)
{
 return -ENOTSUPP;
}
