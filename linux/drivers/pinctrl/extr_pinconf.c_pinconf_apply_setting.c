
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int group_or_pin; int num_configs; int configs; } ;
struct TYPE_6__ {TYPE_2__ configs; } ;
struct pinctrl_setting {int type; TYPE_3__ data; struct pinctrl_dev* pctldev; } ;
struct pinctrl_dev {int dev; TYPE_1__* desc; } ;
struct pinconf_ops {int (* pin_config_set ) (struct pinctrl_dev*,int ,int ,int ) ;int (* pin_config_group_set ) (struct pinctrl_dev*,int ,int ,int ) ;} ;
struct TYPE_4__ {struct pinconf_ops* confops; } ;


 int EINVAL ;


 int dev_err (int ,char*,...) ;
 int stub1 (struct pinctrl_dev*,int ,int ,int ) ;
 int stub2 (struct pinctrl_dev*,int ,int ,int ) ;

int pinconf_apply_setting(const struct pinctrl_setting *setting)
{
 struct pinctrl_dev *pctldev = setting->pctldev;
 const struct pinconf_ops *ops = pctldev->desc->confops;
 int ret;

 if (!ops) {
  dev_err(pctldev->dev, "missing confops\n");
  return -EINVAL;
 }

 switch (setting->type) {
 case 128:
  if (!ops->pin_config_set) {
   dev_err(pctldev->dev, "missing pin_config_set op\n");
   return -EINVAL;
  }
  ret = ops->pin_config_set(pctldev,
    setting->data.configs.group_or_pin,
    setting->data.configs.configs,
    setting->data.configs.num_configs);
  if (ret < 0) {
   dev_err(pctldev->dev,
    "pin_config_set op failed for pin %d\n",
    setting->data.configs.group_or_pin);
   return ret;
  }
  break;
 case 129:
  if (!ops->pin_config_group_set) {
   dev_err(pctldev->dev,
    "missing pin_config_group_set op\n");
   return -EINVAL;
  }
  ret = ops->pin_config_group_set(pctldev,
    setting->data.configs.group_or_pin,
    setting->data.configs.configs,
    setting->data.configs.num_configs);
  if (ret < 0) {
   dev_err(pctldev->dev,
    "pin_config_group_set op failed for group %d\n",
    setting->data.configs.group_or_pin);
   return ret;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
