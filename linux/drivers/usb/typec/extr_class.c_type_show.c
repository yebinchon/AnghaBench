
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_cable {scalar_t__ active; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct typec_cable* to_typec_cable (struct device*) ;

__attribute__((used)) static ssize_t
type_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct typec_cable *cable = to_typec_cable(dev);

 return sprintf(buf, "%s\n", cable->active ? "active" : "passive");
}
