
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 struct fwnode_handle* device_get_named_child_node (struct device*,char*) ;
 struct fwnode_handle* fwnode_create_software_node (int ,int *) ;
 int port_props ;

__attribute__((used)) static struct fwnode_handle *fusb302_fwnode_get(struct device *dev)
{
 struct fwnode_handle *fwnode;

 fwnode = device_get_named_child_node(dev, "connector");
 if (!fwnode)
  fwnode = fwnode_create_software_node(port_props, ((void*)0));

 return fwnode;
}
