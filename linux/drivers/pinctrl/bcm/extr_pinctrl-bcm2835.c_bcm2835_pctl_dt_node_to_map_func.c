
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int function; int group; } ;
struct TYPE_4__ {TYPE_1__ mux; } ;
struct pinctrl_map {TYPE_2__ data; int type; } ;
struct device_node {int dummy; } ;
struct bcm2835_pinctrl {int dev; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int PIN_MAP_TYPE_MUX_GROUP ;
 int * bcm2835_functions ;
 int * bcm2835_gpio_groups ;
 int dev_err (int ,char*,struct device_node*,size_t) ;

__attribute__((used)) static int bcm2835_pctl_dt_node_to_map_func(struct bcm2835_pinctrl *pc,
  struct device_node *np, u32 pin, u32 fnum,
  struct pinctrl_map **maps)
{
 struct pinctrl_map *map = *maps;

 if (fnum >= ARRAY_SIZE(bcm2835_functions)) {
  dev_err(pc->dev, "%pOF: invalid brcm,function %d\n", np, fnum);
  return -EINVAL;
 }

 map->type = PIN_MAP_TYPE_MUX_GROUP;
 map->data.mux.group = bcm2835_gpio_groups[pin];
 map->data.mux.function = bcm2835_functions[fnum];
 (*maps)++;

 return 0;
}
