
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_5__ {struct pinctrl_map* configs; } ;
struct TYPE_4__ {struct pinctrl_map* group; } ;
struct TYPE_6__ {TYPE_2__ configs; TYPE_1__ mux; } ;
struct pinctrl_map {scalar_t__ type; TYPE_3__ data; } ;
struct pinctrl_dev {int dummy; } ;


 scalar_t__ PIN_MAP_TYPE_CONFIGS_GROUP ;
 scalar_t__ PIN_MAP_TYPE_MUX_GROUP ;
 int kfree (struct pinctrl_map*) ;

__attribute__((used)) static void mxs_dt_free_map(struct pinctrl_dev *pctldev,
       struct pinctrl_map *map, unsigned num_maps)
{
 u32 i;

 for (i = 0; i < num_maps; i++) {
  if (map[i].type == PIN_MAP_TYPE_MUX_GROUP)
   kfree(map[i].data.mux.group);
  if (map[i].type == PIN_MAP_TYPE_CONFIGS_GROUP)
   kfree(map[i].data.configs.configs);
 }

 kfree(map);
}
