
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* group; char const* function; } ;
struct TYPE_4__ {TYPE_1__ mux; } ;
struct pinctrl_map {TYPE_2__ data; int type; } ;
struct pinctrl_dev {int dummy; } ;


 int ENOSPC ;
 int PIN_MAP_TYPE_MUX_GROUP ;
 scalar_t__ WARN_ON (int) ;

int pinctrl_utils_add_map_mux(struct pinctrl_dev *pctldev,
  struct pinctrl_map **map, unsigned *reserved_maps,
  unsigned *num_maps, const char *group,
  const char *function)
{
 if (WARN_ON(*num_maps == *reserved_maps))
  return -ENOSPC;

 (*map)[*num_maps].type = PIN_MAP_TYPE_MUX_GROUP;
 (*map)[*num_maps].data.mux.group = group;
 (*map)[*num_maps].data.mux.function = function;
 (*num_maps)++;

 return 0;
}
