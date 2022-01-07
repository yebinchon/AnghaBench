
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_parse_phandle (struct device_node const*,char*,int ) ;

struct device_node *of_graph_get_remote_endpoint(const struct device_node *node)
{

 return of_parse_phandle(node, "remote-endpoint", 0);
}
