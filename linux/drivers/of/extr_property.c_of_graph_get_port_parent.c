
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_get_next_parent (struct device_node*) ;
 int of_node_get (struct device_node*) ;
 int of_node_name_eq (struct device_node*,char*) ;

struct device_node *of_graph_get_port_parent(struct device_node *node)
{
 unsigned int depth;

 if (!node)
  return ((void*)0);





 of_node_get(node);


 for (depth = 3; depth && node; depth--) {
  node = of_get_next_parent(node);
  if (depth == 2 && !of_node_name_eq(node, "ports"))
   break;
 }
 return node;
}
