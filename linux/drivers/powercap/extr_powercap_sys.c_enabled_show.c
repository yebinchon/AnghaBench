
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct powercap_zone {TYPE_2__* ops; } ;
struct powercap_control_type {TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ parent; } ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ (* get_enable ) (struct powercap_zone*,int*) ;} ;
struct TYPE_3__ {scalar_t__ (* get_enable ) (struct powercap_control_type*,int*) ;} ;


 int sprintf (char*,char*,int) ;
 scalar_t__ stub1 (struct powercap_zone*,int*) ;
 scalar_t__ stub2 (struct powercap_control_type*,int*) ;
 struct powercap_control_type* to_powercap_control_type (struct device*) ;
 struct powercap_zone* to_powercap_zone (struct device*) ;

__attribute__((used)) static ssize_t enabled_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 bool mode = 1;


 if (dev->parent) {
  struct powercap_zone *power_zone = to_powercap_zone(dev);
  if (power_zone->ops->get_enable)
   if (power_zone->ops->get_enable(power_zone, &mode))
    mode = 0;
 } else {
  struct powercap_control_type *control_type =
      to_powercap_control_type(dev);
  if (control_type->ops && control_type->ops->get_enable)
   if (control_type->ops->get_enable(control_type, &mode))
    mode = 0;
 }

 return sprintf(buf, "%d\n", mode);
}
