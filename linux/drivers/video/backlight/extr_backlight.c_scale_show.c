
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {size_t scale; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef int ssize_t ;


 size_t BACKLIGHT_SCALE_NON_LINEAR ;
 scalar_t__ WARN_ON (int) ;
 char** backlight_scale_types ;
 int sprintf (char*,char*,...) ;
 struct backlight_device* to_backlight_device (struct device*) ;

__attribute__((used)) static ssize_t scale_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct backlight_device *bd = to_backlight_device(dev);

 if (WARN_ON(bd->props.scale > BACKLIGHT_SCALE_NON_LINEAR))
  return sprintf(buf, "unknown\n");

 return sprintf(buf, "%s\n", backlight_scale_types[bd->props.scale]);
}
