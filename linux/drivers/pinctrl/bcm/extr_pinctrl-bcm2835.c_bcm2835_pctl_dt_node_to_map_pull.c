
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {unsigned long* configs; int num_configs; int group_or_pin; } ;
struct TYPE_5__ {TYPE_1__ configs; } ;
struct pinctrl_map {TYPE_2__ data; int type; } ;
struct device_node {int dummy; } ;
struct bcm2835_pinctrl {int dev; } ;
struct TYPE_6__ {int name; } ;


 int BCM2835_PINCONF_PARAM_PULL ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PIN_MAP_TYPE_CONFIGS_PIN ;
 TYPE_3__* bcm2835_gpio_pins ;
 int dev_err (int ,char*,struct device_node*,int) ;
 unsigned long* kzalloc (int,int ) ;
 unsigned long pinconf_to_config_packed (int ,int) ;

__attribute__((used)) static int bcm2835_pctl_dt_node_to_map_pull(struct bcm2835_pinctrl *pc,
  struct device_node *np, u32 pin, u32 pull,
  struct pinctrl_map **maps)
{
 struct pinctrl_map *map = *maps;
 unsigned long *configs;

 if (pull > 2) {
  dev_err(pc->dev, "%pOF: invalid brcm,pull %d\n", np, pull);
  return -EINVAL;
 }

 configs = kzalloc(sizeof(*configs), GFP_KERNEL);
 if (!configs)
  return -ENOMEM;
 configs[0] = pinconf_to_config_packed(BCM2835_PINCONF_PARAM_PULL, pull);

 map->type = PIN_MAP_TYPE_CONFIGS_PIN;
 map->data.configs.group_or_pin = bcm2835_gpio_pins[pin].name;
 map->data.configs.configs = configs;
 map->data.configs.num_configs = 1;
 (*maps)++;

 return 0;
}
