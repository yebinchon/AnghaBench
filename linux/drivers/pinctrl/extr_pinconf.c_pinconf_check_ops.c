
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dev; TYPE_1__* desc; } ;
struct pinconf_ops {int pin_config_group_set; int pin_config_set; } ;
struct TYPE_2__ {struct pinconf_ops* confops; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;

int pinconf_check_ops(struct pinctrl_dev *pctldev)
{
 const struct pinconf_ops *ops = pctldev->desc->confops;


 if (!ops->pin_config_set && !ops->pin_config_group_set) {
  dev_err(pctldev->dev,
   "pinconf has to be able to set a pins config\n");
  return -EINVAL;
 }
 return 0;
}
