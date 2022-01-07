
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int brightness; } ;
struct backlight_device {int ops_lock; TYPE_1__ props; TYPE_2__* ops; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* get_brightness ) (struct backlight_device*) ;} ;


 int ENXIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct backlight_device*) ;
 int stub2 (struct backlight_device*) ;
 struct backlight_device* to_backlight_device (struct device*) ;

__attribute__((used)) static ssize_t actual_brightness_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 int rc = -ENXIO;
 struct backlight_device *bd = to_backlight_device(dev);

 mutex_lock(&bd->ops_lock);
 if (bd->ops && bd->ops->get_brightness)
  rc = sprintf(buf, "%d\n", bd->ops->get_brightness(bd));
 else
  rc = sprintf(buf, "%d\n", bd->props.brightness);
 mutex_unlock(&bd->ops_lock);

 return rc;
}
