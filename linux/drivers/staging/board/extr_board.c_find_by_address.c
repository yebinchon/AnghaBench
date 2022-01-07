
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct resource {scalar_t__ start; } ;
struct device_node {int dummy; } ;


 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 struct device_node* of_find_all_nodes (struct device_node*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static bool find_by_address(u64 base_address)
{
 struct device_node *dn = of_find_all_nodes(((void*)0));
 struct resource res;

 while (dn) {
  if (!of_address_to_resource(dn, 0, &res)) {
   if (res.start == base_address) {
    of_node_put(dn);
    return 1;
   }
  }
  dn = of_find_all_nodes(dn);
 }

 return 0;
}
