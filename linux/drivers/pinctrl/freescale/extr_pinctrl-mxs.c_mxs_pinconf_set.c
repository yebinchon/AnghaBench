
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int mxs_pinconf_set(struct pinctrl_dev *pctldev,
      unsigned pin, unsigned long *configs,
      unsigned num_configs)
{
 return -ENOTSUPP;
}
