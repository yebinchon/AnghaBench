
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {TYPE_1__* desc; } ;
struct pinconf_ops {int (* pin_config_set ) (struct pinctrl_dev*,unsigned int,unsigned long*,size_t) ;} ;
struct TYPE_2__ {struct pinconf_ops* confops; } ;


 int ENOTSUPP ;
 int stub1 (struct pinctrl_dev*,unsigned int,unsigned long*,size_t) ;

int pinconf_set_config(struct pinctrl_dev *pctldev, unsigned pin,
         unsigned long *configs, size_t nconfigs)
{
 const struct pinconf_ops *ops;

 ops = pctldev->desc->confops;
 if (!ops || !ops->pin_config_set)
  return -ENOTSUPP;

 return ops->pin_config_set(pctldev, pin, configs, nconfigs);
}
