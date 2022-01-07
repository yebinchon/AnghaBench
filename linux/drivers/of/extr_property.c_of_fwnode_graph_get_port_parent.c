
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct device_node {int dummy; } ;


 struct fwnode_handle* of_fwnode_handle (struct device_node*) ;
 struct device_node* of_get_next_parent (struct device_node*) ;
 struct device_node* of_get_parent (int ) ;
 int of_node_name_eq (struct device_node*,char*) ;
 int to_of_node (struct fwnode_handle*) ;

__attribute__((used)) static struct fwnode_handle *
of_fwnode_graph_get_port_parent(struct fwnode_handle *fwnode)
{
 struct device_node *np;


 np = of_get_parent(to_of_node(fwnode));
 if (!np)
  return ((void*)0);


 if (!of_node_name_eq(np, "ports"))
  return of_fwnode_handle(np);

 return of_fwnode_handle(of_get_next_parent(np));
}
