
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {scalar_t__ roles; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ FC_PORT_ROLE_UNKNOWN ;
 int get_fc_port_roles_names (scalar_t__,char*) ;
 int snprintf (char*,int,char*) ;
 struct fc_vport* transport_class_to_vport (struct device*) ;

__attribute__((used)) static ssize_t
show_fc_vport_roles (struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct fc_vport *vport = transport_class_to_vport(dev);

 if (vport->roles == FC_PORT_ROLE_UNKNOWN)
  return snprintf(buf, 20, "unknown\n");
 return get_fc_port_roles_names(vport->roles, buf);
}
