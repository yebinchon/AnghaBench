
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* group; char const* function; } ;
struct TYPE_3__ {TYPE_2__ mux; } ;
struct pinctrl_map {TYPE_1__ data; int type; } ;


 int ENOSPC ;
 int PIN_MAP_TYPE_MUX_GROUP ;

__attribute__((used)) static int abx500_dt_add_map_mux(struct pinctrl_map **map,
  unsigned *reserved_maps,
  unsigned *num_maps, const char *group,
  const char *function)
{
 if (*num_maps == *reserved_maps)
  return -ENOSPC;

 (*map)[*num_maps].type = PIN_MAP_TYPE_MUX_GROUP;
 (*map)[*num_maps].data.mux.group = group;
 (*map)[*num_maps].data.mux.function = function;
 (*num_maps)++;

 return 0;
}
