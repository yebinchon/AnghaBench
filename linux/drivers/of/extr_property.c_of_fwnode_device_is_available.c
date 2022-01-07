
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int of_device_is_available (int ) ;
 int to_of_node (struct fwnode_handle const*) ;

__attribute__((used)) static bool of_fwnode_device_is_available(const struct fwnode_handle *fwnode)
{
 return of_device_is_available(to_of_node(fwnode));
}
