
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* cvm_oct_of_get_child (struct device_node*,int) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static struct device_node *cvm_oct_node_for_port(struct device_node *pip,
       int interface, int port)
{
 struct device_node *ni, *np;

 ni = cvm_oct_of_get_child(pip, interface);
 if (!ni)
  return ((void*)0);

 np = cvm_oct_of_get_child(ni, port);
 of_node_put(ni);

 return np;
}
