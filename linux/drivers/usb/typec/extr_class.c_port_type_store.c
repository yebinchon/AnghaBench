
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_port {int port_type; int port_type_lock; TYPE_1__* cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum typec_port_type { ____Placeholder_typec_port_type } typec_port_type ;
struct TYPE_2__ {int (* port_type_set ) (TYPE_1__*,int) ;scalar_t__ type; } ;


 int EOPNOTSUPP ;
 scalar_t__ TYPEC_PORT_DRP ;
 int dev_dbg (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*,int) ;
 int sysfs_match_string (int ,char const*) ;
 struct typec_port* to_typec_port (struct device*) ;
 int typec_port_power_roles ;

__attribute__((used)) static ssize_t
port_type_store(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t size)
{
 struct typec_port *port = to_typec_port(dev);
 int ret;
 enum typec_port_type type;

 if (!port->cap->port_type_set || port->cap->type != TYPEC_PORT_DRP) {
  dev_dbg(dev, "changing port type not supported\n");
  return -EOPNOTSUPP;
 }

 ret = sysfs_match_string(typec_port_power_roles, buf);
 if (ret < 0)
  return ret;

 type = ret;
 mutex_lock(&port->port_type_lock);

 if (port->port_type == type) {
  ret = size;
  goto unlock_and_ret;
 }

 ret = port->cap->port_type_set(port->cap, type);
 if (ret)
  goto unlock_and_ret;

 port->port_type = type;
 ret = size;

unlock_and_ret:
 mutex_unlock(&port->port_type_lock);
 return ret;
}
