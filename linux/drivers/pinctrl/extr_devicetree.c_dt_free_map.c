
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_ops {int (* dt_free_map ) (struct pinctrl_dev*,struct pinctrl_map*,unsigned int) ;} ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {struct pinctrl_ops* pctlops; } ;


 int kfree (struct pinctrl_map*) ;
 int stub1 (struct pinctrl_dev*,struct pinctrl_map*,unsigned int) ;

__attribute__((used)) static void dt_free_map(struct pinctrl_dev *pctldev,
       struct pinctrl_map *map, unsigned num_maps)
{
 if (pctldev) {
  const struct pinctrl_ops *ops = pctldev->desc->pctlops;
  if (ops->dt_free_map)
   ops->dt_free_map(pctldev, map, num_maps);
 } else {

  kfree(map);
 }
}
