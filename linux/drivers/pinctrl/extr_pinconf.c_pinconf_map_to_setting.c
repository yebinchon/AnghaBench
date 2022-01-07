
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int group_or_pin; int configs; int num_configs; } ;
struct TYPE_6__ {TYPE_1__ configs; } ;
struct pinctrl_setting {int type; TYPE_2__ data; struct pinctrl_dev* pctldev; } ;
struct TYPE_7__ {int configs; int num_configs; int group_or_pin; } ;
struct TYPE_8__ {TYPE_3__ configs; } ;
struct pinctrl_map {TYPE_4__ data; } ;
struct pinctrl_dev {int dev; } ;


 int EINVAL ;


 int dev_err (int ,char*,int ) ;
 int pin_get_from_name (struct pinctrl_dev*,int ) ;
 int pinctrl_get_group_selector (struct pinctrl_dev*,int ) ;

int pinconf_map_to_setting(const struct pinctrl_map *map,
     struct pinctrl_setting *setting)
{
 struct pinctrl_dev *pctldev = setting->pctldev;
 int pin;

 switch (setting->type) {
 case 128:
  pin = pin_get_from_name(pctldev,
     map->data.configs.group_or_pin);
  if (pin < 0) {
   dev_err(pctldev->dev, "could not map pin config for \"%s\"",
    map->data.configs.group_or_pin);
   return pin;
  }
  setting->data.configs.group_or_pin = pin;
  break;
 case 129:
  pin = pinctrl_get_group_selector(pctldev,
      map->data.configs.group_or_pin);
  if (pin < 0) {
   dev_err(pctldev->dev, "could not map group config for \"%s\"",
    map->data.configs.group_or_pin);
   return pin;
  }
  setting->data.configs.group_or_pin = pin;
  break;
 default:
  return -EINVAL;
 }

 setting->data.configs.num_configs = map->data.configs.num_configs;
 setting->data.configs.configs = map->data.configs.configs;

 return 0;
}
