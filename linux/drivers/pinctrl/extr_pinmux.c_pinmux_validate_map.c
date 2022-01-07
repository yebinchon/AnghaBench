
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int function; } ;
struct TYPE_4__ {TYPE_1__ mux; } ;
struct pinctrl_map {int name; TYPE_2__ data; } ;


 int EINVAL ;
 int pr_err (char*,int ,int) ;

int pinmux_validate_map(const struct pinctrl_map *map, int i)
{
 if (!map->data.mux.function) {
  pr_err("failed to register map %s (%d): no function given\n",
         map->name, i);
  return -EINVAL;
 }

 return 0;
}
