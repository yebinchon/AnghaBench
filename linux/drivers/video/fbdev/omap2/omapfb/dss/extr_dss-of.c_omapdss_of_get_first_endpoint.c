
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_node_put (struct device_node*) ;
 struct device_node* omapdss_of_get_next_endpoint (struct device_node*,int *) ;
 struct device_node* omapdss_of_get_next_port (struct device_node const*,int *) ;

struct device_node *
omapdss_of_get_first_endpoint(const struct device_node *parent)
{
 struct device_node *port, *ep;

 port = omapdss_of_get_next_port(parent, ((void*)0));

 if (!port)
  return ((void*)0);

 ep = omapdss_of_get_next_endpoint(port, ((void*)0));

 of_node_put(port);

 return ep;
}
