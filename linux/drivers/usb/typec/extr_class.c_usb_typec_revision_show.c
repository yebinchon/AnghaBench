
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct typec_port {TYPE_1__* cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int revision; } ;


 int sprintf (char*,char*,int,int) ;
 struct typec_port* to_typec_port (struct device*) ;

__attribute__((used)) static ssize_t usb_typec_revision_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct typec_port *port = to_typec_port(dev);
 u16 rev = port->cap->revision;

 return sprintf(buf, "%d.%d\n", (rev >> 8) & 0xff, (rev >> 4) & 0xf);
}
