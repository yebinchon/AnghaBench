
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_iodelay_pingroup {int ncfg; int * cfg; } ;
struct ti_iodelay_device {struct device* dev; } ;
struct pinctrl_dev {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOTSUPP ;
 unsigned long PIN_CONFIG_END ;
 int dev_err (struct device*,char*,...) ;
 struct ti_iodelay_device* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct ti_iodelay_pingroup* ti_iodelay_get_pingroup (struct ti_iodelay_device*,unsigned int) ;
 scalar_t__ ti_iodelay_pinconf_set (struct ti_iodelay_device*,int *) ;

__attribute__((used)) static int ti_iodelay_pinconf_group_set(struct pinctrl_dev *pctldev,
     unsigned int selector,
     unsigned long *configs,
     unsigned int num_configs)
{
 struct ti_iodelay_device *iod;
 struct device *dev;
 struct ti_iodelay_pingroup *group;
 int i;

 iod = pinctrl_dev_get_drvdata(pctldev);
 dev = iod->dev;
 group = ti_iodelay_get_pingroup(iod, selector);

 if (num_configs != 1) {
  dev_err(dev, "Unsupported number of configurations %d\n",
   num_configs);
  return -EINVAL;
 }

 if (*configs != PIN_CONFIG_END) {
  dev_err(dev, "Unsupported configuration\n");
  return -EINVAL;
 }

 for (i = 0; i < group->ncfg; i++) {
  if (ti_iodelay_pinconf_set(iod, &group->cfg[i]))
   return -ENOTSUPP;
 }

 return 0;
}
