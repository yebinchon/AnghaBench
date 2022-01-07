
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_get_child_by_name (struct device_node const*,char*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_name_eq (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;

struct device_node *
omapdss_of_get_next_port(const struct device_node *parent,
    struct device_node *prev)
{
 struct device_node *port = ((void*)0);

 if (!parent)
  return ((void*)0);

 if (!prev) {
  struct device_node *ports;




  ports = of_get_child_by_name(parent, "ports");
  if (ports)
   parent = ports;

  port = of_get_child_by_name(parent, "port");


  of_node_put(ports);
 } else {
  struct device_node *ports;

  ports = of_get_parent(prev);
  if (!ports)
   return ((void*)0);

  do {
   port = of_get_next_child(ports, prev);
   if (!port) {
    of_node_put(ports);
    return ((void*)0);
   }
   prev = port;
  } while (!of_node_name_eq(port, "port"));

  of_node_put(ports);
 }

 return port;
}
