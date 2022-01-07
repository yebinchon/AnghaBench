
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct fwnode_endpoint {int id; int port; struct fwnode_handle const* local_fwnode; } ;
typedef struct device_node const device_node ;


 struct device_node const* of_get_parent (struct device_node const*) ;
 int of_node_put (struct device_node const*) ;
 int of_property_read_u32 (struct device_node const*,char*,int *) ;
 struct device_node const* to_of_node (struct fwnode_handle const*) ;

__attribute__((used)) static int of_fwnode_graph_parse_endpoint(const struct fwnode_handle *fwnode,
       struct fwnode_endpoint *endpoint)
{
 const struct device_node *node = to_of_node(fwnode);
 struct device_node *port_node = of_get_parent(node);

 endpoint->local_fwnode = fwnode;

 of_property_read_u32(port_node, "reg", &endpoint->port);
 of_property_read_u32(node, "reg", &endpoint->id);

 of_node_put(port_node);

 return 0;
}
