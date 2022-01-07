
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int of_device_is_available (struct device_node*) ;
 struct device_node* of_graph_get_endpoint_by_regs (struct device_node const*,int ,int ) ;
 struct device_node* of_graph_get_remote_port_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int pr_debug (char*,...) ;

struct device_node *of_graph_get_remote_node(const struct device_node *node,
          u32 port, u32 endpoint)
{
 struct device_node *endpoint_node, *remote;

 endpoint_node = of_graph_get_endpoint_by_regs(node, port, endpoint);
 if (!endpoint_node) {
  pr_debug("no valid endpoint (%d, %d) for node %pOF\n",
    port, endpoint, node);
  return ((void*)0);
 }

 remote = of_graph_get_remote_port_parent(endpoint_node);
 of_node_put(endpoint_node);
 if (!remote) {
  pr_debug("no valid remote node\n");
  return ((void*)0);
 }

 if (!of_device_is_available(remote)) {
  pr_debug("not available for remote node\n");
  of_node_put(remote);
  return ((void*)0);
 }

 return remote;
}
