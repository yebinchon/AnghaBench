
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_property_count_strings (struct device_node*,char*) ;

__attribute__((used)) static const char *sunxi_pctrl_find_pins_prop(struct device_node *node,
           int *npins)
{
 int count;


 count = of_property_count_strings(node, "pins");
 if (count > 0) {
  *npins = count;
  return "pins";
 }


 count = of_property_count_strings(node, "allwinner,pins");
 if (count > 0) {
  *npins = count;
  return "allwinner,pins";
 }

 return ((void*)0);
}
