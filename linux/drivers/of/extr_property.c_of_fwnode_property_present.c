
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int of_property_read_bool (int ,char const*) ;
 int to_of_node (struct fwnode_handle const*) ;

__attribute__((used)) static bool of_fwnode_property_present(const struct fwnode_handle *fwnode,
           const char *propname)
{
 return of_property_read_bool(to_of_node(fwnode), propname);
}
