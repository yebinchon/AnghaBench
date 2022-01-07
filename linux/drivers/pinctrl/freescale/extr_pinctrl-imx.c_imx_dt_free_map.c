
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int kfree (struct pinctrl_map*) ;

__attribute__((used)) static void imx_dt_free_map(struct pinctrl_dev *pctldev,
    struct pinctrl_map *map, unsigned num_maps)
{
 kfree(map);
}
