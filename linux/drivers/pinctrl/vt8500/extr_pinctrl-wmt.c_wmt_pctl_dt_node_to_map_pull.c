
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wmt_pinctrl_data {int * groups; int dev; } ;
struct TYPE_3__ {unsigned long* configs; int num_configs; int group_or_pin; } ;
struct TYPE_4__ {TYPE_1__ configs; } ;
struct pinctrl_map {TYPE_2__ data; int type; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long PIN_CONFIG_BIAS_DISABLE ;
 unsigned long PIN_CONFIG_BIAS_PULL_DOWN ;
 unsigned long PIN_CONFIG_BIAS_PULL_UP ;
 int PIN_MAP_TYPE_CONFIGS_PIN ;
 int dev_err (int ,char*,int) ;
 unsigned long* kzalloc (int,int ) ;
 int wmt_pctl_find_group_by_pin (struct wmt_pinctrl_data*,int) ;

__attribute__((used)) static int wmt_pctl_dt_node_to_map_pull(struct wmt_pinctrl_data *data,
     struct device_node *np,
     u32 pin, u32 pull,
     struct pinctrl_map **maps)
{
 int group;
 unsigned long *configs;
 struct pinctrl_map *map = *maps;

 if (pull > 2) {
  dev_err(data->dev, "invalid wm,pull %d\n", pull);
  return -EINVAL;
 }

 group = wmt_pctl_find_group_by_pin(data, pin);
 if (group < 0) {
  dev_err(data->dev, "unable to match pin %d to group\n", pin);
  return group;
 }

 configs = kzalloc(sizeof(*configs), GFP_KERNEL);
 if (!configs)
  return -ENOMEM;

 switch (pull) {
 case 0:
  configs[0] = PIN_CONFIG_BIAS_DISABLE;
  break;
 case 1:
  configs[0] = PIN_CONFIG_BIAS_PULL_DOWN;
  break;
 case 2:
  configs[0] = PIN_CONFIG_BIAS_PULL_UP;
  break;
 default:
  configs[0] = PIN_CONFIG_BIAS_DISABLE;
  dev_err(data->dev, "invalid pull state %d - disabling\n", pull);
 }

 map->type = PIN_MAP_TYPE_CONFIGS_PIN;
 map->data.configs.group_or_pin = data->groups[group];
 map->data.configs.configs = configs;
 map->data.configs.num_configs = 1;
 (*maps)++;

 return 0;
}
