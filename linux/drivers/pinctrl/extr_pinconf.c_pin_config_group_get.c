
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int mutex; int dev; TYPE_1__* desc; } ;
struct pinconf_ops {int (* pin_config_group_get ) (struct pinctrl_dev*,int,unsigned long*) ;} ;
struct TYPE_2__ {struct pinconf_ops* confops; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int dev_dbg (int ,char*) ;
 struct pinctrl_dev* get_pinctrl_dev_from_devname (char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pinctrl_get_group_selector (struct pinctrl_dev*,char const*) ;
 int stub1 (struct pinctrl_dev*,int,unsigned long*) ;

int pin_config_group_get(const char *dev_name, const char *pin_group,
    unsigned long *config)
{
 struct pinctrl_dev *pctldev;
 const struct pinconf_ops *ops;
 int selector, ret;

 pctldev = get_pinctrl_dev_from_devname(dev_name);
 if (!pctldev) {
  ret = -EINVAL;
  return ret;
 }

 mutex_lock(&pctldev->mutex);

 ops = pctldev->desc->confops;

 if (!ops || !ops->pin_config_group_get) {
  dev_dbg(pctldev->dev,
   "cannot get configuration for pin group, missing group config get function in driver\n");
  ret = -ENOTSUPP;
  goto unlock;
 }

 selector = pinctrl_get_group_selector(pctldev, pin_group);
 if (selector < 0) {
  ret = selector;
  goto unlock;
 }

 ret = ops->pin_config_group_get(pctldev, selector, config);

unlock:
 mutex_unlock(&pctldev->mutex);
 return ret;
}
