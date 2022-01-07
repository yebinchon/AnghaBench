
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_connection {int * endpoint; scalar_t__ fwnode; scalar_t__ id; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 void* ERR_PTR (int ) ;
 struct device* class_find_device_by_fwnode (int ,scalar_t__) ;
 struct device* class_find_device_by_name (int ,int ) ;
 int fwnode_property_present (scalar_t__,scalar_t__) ;
 int role_class ;
 void* to_role_switch (struct device*) ;

__attribute__((used)) static void *usb_role_switch_match(struct device_connection *con, int ep,
       void *data)
{
 struct device *dev;

 if (con->fwnode) {
  if (con->id && !fwnode_property_present(con->fwnode, con->id))
   return ((void*)0);

  dev = class_find_device_by_fwnode(role_class, con->fwnode);
 } else {
  dev = class_find_device_by_name(role_class, con->endpoint[ep]);
 }

 return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
}
