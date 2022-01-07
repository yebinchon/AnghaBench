
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_get_next_parent (struct device_node*) ;
 struct device_node* of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;

bool of_dma_is_coherent(struct device_node *np)
{
 struct device_node *node = of_node_get(np);

 while (node) {
  if (of_property_read_bool(node, "dma-coherent")) {
   of_node_put(node);
   return 1;
  }
  node = of_get_next_parent(node);
 }
 of_node_put(node);
 return 0;
}
