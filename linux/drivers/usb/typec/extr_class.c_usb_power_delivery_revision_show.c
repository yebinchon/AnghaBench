
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_port {TYPE_1__* cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int pd_revision; } ;


 int sprintf (char*,char*,int) ;
 struct typec_port* to_typec_port (struct device*) ;

__attribute__((used)) static ssize_t usb_power_delivery_revision_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct typec_port *p = to_typec_port(dev);

 return sprintf(buf, "%d\n", (p->cap->pd_revision >> 8) & 0xff);
}
