
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_map {int dummy; } ;


 int pinctrl_register_map (struct pinctrl_map const*,unsigned int,int) ;

int pinctrl_register_mappings(const struct pinctrl_map *maps,
         unsigned num_maps)
{
 return pinctrl_register_map(maps, num_maps, 1);
}
