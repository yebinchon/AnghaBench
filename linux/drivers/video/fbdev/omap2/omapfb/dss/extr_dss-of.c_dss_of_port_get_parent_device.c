
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 struct property* of_find_property (struct device_node*,char*,int *) ;
 struct device_node* of_get_next_parent (struct device_node*) ;
 struct device_node* of_get_parent (struct device_node*) ;

struct device_node *dss_of_port_get_parent_device(struct device_node *port)
{
 struct device_node *np;
 int i;

 if (!port)
  return ((void*)0);

 np = of_get_parent(port);

 for (i = 0; i < 2 && np; ++i) {
  struct property *prop;

  prop = of_find_property(np, "compatible", ((void*)0));

  if (prop)
   return np;

  np = of_get_next_parent(np);
 }

 return ((void*)0);
}
