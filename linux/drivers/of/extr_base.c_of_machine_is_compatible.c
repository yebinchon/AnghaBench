
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_device_is_compatible (struct device_node*,char const*) ;
 struct device_node* of_find_node_by_path (char*) ;
 int of_node_put (struct device_node*) ;

int of_machine_is_compatible(const char *compat)
{
 struct device_node *root;
 int rc = 0;

 root = of_find_node_by_path("/");
 if (root) {
  rc = of_device_is_compatible(root, compat);
  of_node_put(root);
 }
 return rc;
}
