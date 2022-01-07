
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_port {int port_type_lock; TYPE_1__* cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* dr_set ) (TYPE_1__*,int) ;scalar_t__ data; } ;


 int EOPNOTSUPP ;
 scalar_t__ TYPEC_PORT_DRD ;
 int dev_dbg (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*,int) ;
 int sysfs_match_string (int ,char const*) ;
 struct typec_port* to_typec_port (struct device*) ;
 int typec_data_roles ;

__attribute__((used)) static ssize_t data_role_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t size)
{
 struct typec_port *port = to_typec_port(dev);
 int ret;

 if (!port->cap->dr_set) {
  dev_dbg(dev, "data role swapping not supported\n");
  return -EOPNOTSUPP;
 }

 ret = sysfs_match_string(typec_data_roles, buf);
 if (ret < 0)
  return ret;

 mutex_lock(&port->port_type_lock);
 if (port->cap->data != TYPEC_PORT_DRD) {
  ret = -EOPNOTSUPP;
  goto unlock_and_ret;
 }

 ret = port->cap->dr_set(port->cap, ret);
 if (ret)
  goto unlock_and_ret;

 ret = size;
unlock_and_ret:
 mutex_unlock(&port->port_type_lock);
 return ret;
}
