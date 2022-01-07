
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct device_node {int dummy; } ;


 int PIN_MAP_TYPE_INVALID ;
 int pinconf_generic_dt_node_to_map (struct pinctrl_dev*,struct device_node*,struct pinctrl_map**,int *,int ) ;

__attribute__((used)) static int atlas7_pinctrl_dt_node_to_map(struct pinctrl_dev *pctldev,
     struct device_node *np_config,
     struct pinctrl_map **map,
     u32 *num_maps)
{
 return pinconf_generic_dt_node_to_map(pctldev, np_config, map,
    num_maps, PIN_MAP_TYPE_INVALID);
}
