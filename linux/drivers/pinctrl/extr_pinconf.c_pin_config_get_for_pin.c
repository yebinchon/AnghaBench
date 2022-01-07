
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dev; TYPE_1__* desc; } ;
struct pinconf_ops {int (* pin_config_get ) (struct pinctrl_dev*,unsigned int,unsigned long*) ;} ;
struct TYPE_2__ {struct pinconf_ops* confops; } ;


 int ENOTSUPP ;
 int dev_dbg (int ,char*) ;
 int stub1 (struct pinctrl_dev*,unsigned int,unsigned long*) ;

int pin_config_get_for_pin(struct pinctrl_dev *pctldev, unsigned pin,
      unsigned long *config)
{
 const struct pinconf_ops *ops = pctldev->desc->confops;

 if (!ops || !ops->pin_config_get) {
  dev_dbg(pctldev->dev,
   "cannot get pin configuration, .pin_config_get missing in driver\n");
  return -ENOTSUPP;
 }

 return ops->pin_config_get(pctldev, pin, config);
}
