
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct device_node {int name; } ;


 int EINVAL ;
 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;
 int pinctrl_utils_add_map_mux (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,char const*,int ) ;
 int pinctrl_utils_reserve_map (struct pinctrl_dev*,struct pinctrl_map**,unsigned int*,unsigned int*,int) ;
 int pr_err (char*,struct device_node*) ;

__attribute__((used)) static int tb10x_dt_node_to_map(struct pinctrl_dev *pctl,
    struct device_node *np_config,
    struct pinctrl_map **map, unsigned *num_maps)
{
 const char *string;
 unsigned reserved_maps = 0;
 int ret = 0;

 if (of_property_read_string(np_config, "abilis,function", &string)) {
  pr_err("%pOF: No abilis,function property in device tree.\n",
   np_config);
  return -EINVAL;
 }

 *map = ((void*)0);
 *num_maps = 0;

 ret = pinctrl_utils_reserve_map(pctl, map, &reserved_maps,
     num_maps, 1);
 if (ret)
  goto out;

 ret = pinctrl_utils_add_map_mux(pctl, map, &reserved_maps,
     num_maps, string, np_config->name);

out:
 return ret;
}
