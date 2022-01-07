
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_port {size_t port_type; TYPE_1__* cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {size_t type; } ;


 size_t TYPEC_PORT_DRP ;
 int sprintf (char*,char*,char*) ;
 struct typec_port* to_typec_port (struct device*) ;
 char** typec_port_power_roles ;
 char** typec_port_types_drp ;

__attribute__((used)) static ssize_t
port_type_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct typec_port *port = to_typec_port(dev);

 if (port->cap->type == TYPEC_PORT_DRP)
  return sprintf(buf, "%s\n",
          typec_port_types_drp[port->port_type]);

 return sprintf(buf, "[%s]\n", typec_port_power_roles[port->cap->type]);
}
