
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_get_next_child (struct device_node const*,struct device_node*) ;
 int of_node_name_eq (struct device_node*,char*) ;

struct device_node *
omapdss_of_get_next_endpoint(const struct device_node *parent,
        struct device_node *prev)
{
 struct device_node *ep = ((void*)0);

 if (!parent)
  return ((void*)0);

 do {
  ep = of_get_next_child(parent, prev);
  if (!ep)
   return ((void*)0);
  prev = ep;
 } while (!of_node_name_eq(ep, "endpoint"));

 return ep;
}
