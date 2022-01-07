
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_property_read_string (struct device_node*,char*,char const**) ;

__attribute__((used)) static const char *sunxi_pctrl_parse_function_prop(struct device_node *node)
{
 const char *function;
 int ret;


 ret = of_property_read_string(node, "function", &function);
 if (!ret)
  return function;


 ret = of_property_read_string(node, "allwinner,function", &function);
 if (!ret)
  return function;

 return ((void*)0);
}
