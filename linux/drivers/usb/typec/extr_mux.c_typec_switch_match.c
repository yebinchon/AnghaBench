
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_connection {scalar_t__* endpoint; scalar_t__ fwnode; scalar_t__ id; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 void* ERR_PTR (int ) ;
 struct device* class_find_device (int *,int *,scalar_t__,int ) ;
 int fwnode_property_present (scalar_t__,scalar_t__) ;
 int name_match ;
 int switch_fwnode_match ;
 void* to_typec_switch (struct device*) ;
 int typec_mux_class ;

__attribute__((used)) static void *typec_switch_match(struct device_connection *con, int ep,
    void *data)
{
 struct device *dev;

 if (con->fwnode) {
  if (con->id && !fwnode_property_present(con->fwnode, con->id))
   return ((void*)0);

  dev = class_find_device(&typec_mux_class, ((void*)0), con->fwnode,
     switch_fwnode_match);
 } else {
  dev = class_find_device(&typec_mux_class, ((void*)0),
     con->endpoint[ep], name_match);
 }

 return dev ? to_typec_switch(dev) : ERR_PTR(-EPROBE_DEFER);
}
