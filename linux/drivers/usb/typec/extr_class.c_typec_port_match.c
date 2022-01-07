
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_connection {int * endpoint; scalar_t__ fwnode; } ;
typedef void device ;


 int EPROBE_DEFER ;
 void* ERR_PTR (int ) ;
 void* class_find_device_by_fwnode (int ,scalar_t__) ;
 void* class_find_device_by_name (int ,int ) ;
 int typec_class ;

__attribute__((used)) static void *typec_port_match(struct device_connection *con, int ep, void *data)
{
 struct device *dev;





 if (con->fwnode)
  return class_find_device_by_fwnode(typec_class, con->fwnode);

 dev = class_find_device_by_name(typec_class, con->endpoint[ep]);

 return dev ? dev : ERR_PTR(-EPROBE_DEFER);
}
