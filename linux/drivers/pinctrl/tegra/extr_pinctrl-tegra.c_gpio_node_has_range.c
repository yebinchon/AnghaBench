
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_compatible_node (int *,int *,char const*) ;
 int of_find_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static bool gpio_node_has_range(const char *compatible)
{
 struct device_node *np;
 bool has_prop = 0;

 np = of_find_compatible_node(((void*)0), ((void*)0), compatible);
 if (!np)
  return has_prop;

 has_prop = of_find_property(np, "gpio-ranges", ((void*)0));

 of_node_put(np);

 return has_prop;
}
