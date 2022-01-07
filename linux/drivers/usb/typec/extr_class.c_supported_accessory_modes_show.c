
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_port {TYPE_1__* cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int* accessory; } ;


 int ARRAY_SIZE (int*) ;
 int sprintf (char*,char*,...) ;
 struct typec_port* to_typec_port (struct device*) ;
 char** typec_accessory_modes ;

__attribute__((used)) static ssize_t supported_accessory_modes_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct typec_port *port = to_typec_port(dev);
 ssize_t ret = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(port->cap->accessory); i++) {
  if (port->cap->accessory[i])
   ret += sprintf(buf + ret, "%s ",
          typec_accessory_modes[port->cap->accessory[i]]);
 }

 if (!ret)
  return sprintf(buf, "none\n");

 buf[ret - 1] = '\n';

 return ret;
}
