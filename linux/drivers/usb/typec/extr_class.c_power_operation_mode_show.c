
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_port {size_t pwr_opmode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct typec_port* to_typec_port (struct device*) ;
 char** typec_pwr_opmodes ;

__attribute__((used)) static ssize_t power_operation_mode_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct typec_port *port = to_typec_port(dev);

 return sprintf(buf, "%s\n", typec_pwr_opmodes[port->pwr_opmode]);
}
