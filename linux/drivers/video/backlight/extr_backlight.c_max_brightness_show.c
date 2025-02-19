
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int max_brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct backlight_device* to_backlight_device (struct device*) ;

__attribute__((used)) static ssize_t max_brightness_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct backlight_device *bd = to_backlight_device(dev);

 return sprintf(buf, "%d\n", bd->props.max_brightness);
}
