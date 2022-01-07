
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int configs; int num_configs; int group_or_pin; } ;
struct TYPE_4__ {TYPE_1__ configs; } ;
struct pinctrl_map {int name; TYPE_2__ data; } ;


 int EINVAL ;
 int pr_err (char*,int ,int) ;

int pinconf_validate_map(const struct pinctrl_map *map, int i)
{
 if (!map->data.configs.group_or_pin) {
  pr_err("failed to register map %s (%d): no group/pin given\n",
         map->name, i);
  return -EINVAL;
 }

 if (!map->data.configs.num_configs ||
   !map->data.configs.configs) {
  pr_err("failed to register map %s (%d): no configs given\n",
         map->name, i);
  return -EINVAL;
 }

 return 0;
}
