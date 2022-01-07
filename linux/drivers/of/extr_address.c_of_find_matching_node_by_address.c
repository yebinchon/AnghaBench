
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct resource {scalar_t__ start; } ;
struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;


 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 struct device_node* of_find_matching_node (struct device_node*,struct of_device_id const*) ;

struct device_node *of_find_matching_node_by_address(struct device_node *from,
     const struct of_device_id *matches,
     u64 base_address)
{
 struct device_node *dn = of_find_matching_node(from, matches);
 struct resource res;

 while (dn) {
  if (!of_address_to_resource(dn, 0, &res) &&
      res.start == base_address)
   return dn;

  dn = of_find_matching_node(dn, matches);
 }

 return ((void*)0);
}
