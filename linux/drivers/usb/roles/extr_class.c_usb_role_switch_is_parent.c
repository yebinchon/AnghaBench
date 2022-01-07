
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_role_switch {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 struct usb_role_switch* ERR_PTR (int ) ;
 struct device* class_find_device_by_fwnode (int ,struct fwnode_handle*) ;
 struct fwnode_handle* fwnode_get_parent (struct fwnode_handle*) ;
 int fwnode_property_present (struct fwnode_handle*,char*) ;
 int role_class ;
 struct usb_role_switch* to_role_switch (struct device*) ;

__attribute__((used)) static struct usb_role_switch *
usb_role_switch_is_parent(struct fwnode_handle *fwnode)
{
 struct fwnode_handle *parent = fwnode_get_parent(fwnode);
 struct device *dev;

 if (!parent || !fwnode_property_present(parent, "usb-role-switch"))
  return ((void*)0);

 dev = class_find_device_by_fwnode(role_class, parent);
 return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
}
