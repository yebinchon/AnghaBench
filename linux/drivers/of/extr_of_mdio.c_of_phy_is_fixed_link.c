
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int __be32 ;


 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 scalar_t__ of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 scalar_t__ strcmp (char const*,char*) ;

bool of_phy_is_fixed_link(struct device_node *np)
{
 struct device_node *dn;
 int len, err;
 const char *managed;


 dn = of_get_child_by_name(np, "fixed-link");
 if (dn) {
  of_node_put(dn);
  return 1;
 }

 err = of_property_read_string(np, "managed", &managed);
 if (err == 0 && strcmp(managed, "auto") != 0)
  return 1;


 if (of_get_property(np, "fixed-link", &len) &&
     len == (5 * sizeof(__be32)))
  return 1;

 return 0;
}
