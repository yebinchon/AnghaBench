
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_graph_get_port_parent (struct device_node*) ;
 struct device_node* of_graph_get_remote_endpoint (struct device_node const*) ;
 int of_node_put (struct device_node*) ;

struct device_node *of_graph_get_remote_port_parent(
          const struct device_node *node)
{
 struct device_node *np, *pp;


 np = of_graph_get_remote_endpoint(node);

 pp = of_graph_get_port_parent(np);

 of_node_put(np);

 return pp;
}
