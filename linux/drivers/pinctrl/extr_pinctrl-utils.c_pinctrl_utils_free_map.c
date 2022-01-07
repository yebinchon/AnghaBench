
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct pinctrl_map* configs; } ;
struct TYPE_4__ {TYPE_1__ configs; } ;
struct pinctrl_map {int type; TYPE_2__ data; } ;
struct pinctrl_dev {int dummy; } ;




 int kfree (struct pinctrl_map*) ;

void pinctrl_utils_free_map(struct pinctrl_dev *pctldev,
       struct pinctrl_map *map, unsigned num_maps)
{
 int i;

 for (i = 0; i < num_maps; i++) {
  switch (map[i].type) {
  case 129:
  case 128:
   kfree(map[i].data.configs.configs);
   break;
  default:
   break;
  }
 }
 kfree(map);
}
