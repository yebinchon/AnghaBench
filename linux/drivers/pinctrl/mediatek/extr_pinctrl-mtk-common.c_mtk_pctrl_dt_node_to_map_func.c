
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
struct mtk_pinctrl_group {int name; } ;
struct mtk_pinctrl {int dev; } ;


 int EINVAL ;
 int ENOSPC ;
 int PIN_MAP_TYPE_MUX_GROUP ;
 int dev_err (int ,char*,size_t,size_t) ;
 int * mtk_gpio_functions ;
 int mtk_pctrl_is_function_valid (struct mtk_pinctrl*,size_t,size_t) ;

__attribute__((used)) static int mtk_pctrl_dt_node_to_map_func(struct mtk_pinctrl *pctl,
  u32 pin, u32 fnum, struct mtk_pinctrl_group *grp,
  struct pinctrl_map **map, unsigned *reserved_maps,
  unsigned *num_maps)
{
 bool ret;

 if (*num_maps == *reserved_maps)
  return -ENOSPC;

 (*map)[*num_maps].type = PIN_MAP_TYPE_MUX_GROUP;
 (*map)[*num_maps].data.mux.group = grp->name;

 ret = mtk_pctrl_is_function_valid(pctl, pin, fnum);
 if (!ret) {
  dev_err(pctl->dev, "invalid function %d on pin %d .\n",
    fnum, pin);
  return -EINVAL;
 }

 (*map)[*num_maps].data.mux.function = mtk_gpio_functions[fnum];
 (*num_maps)++;

 return 0;
}
