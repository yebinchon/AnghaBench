
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_port {size_t pwr_role; TYPE_1__* cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ TYPEC_PORT_DRP ;
 size_t TYPEC_SOURCE ;
 int sprintf (char*,char*,char*) ;
 struct typec_port* to_typec_port (struct device*) ;
 char** typec_roles ;

__attribute__((used)) static ssize_t power_role_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct typec_port *port = to_typec_port(dev);

 if (port->cap->type == TYPEC_PORT_DRP)
  return sprintf(buf, "%s\n", port->pwr_role == TYPEC_SOURCE ?
          "[source] sink" : "source [sink]");

 return sprintf(buf, "[%s]\n", typec_roles[port->pwr_role]);
}
