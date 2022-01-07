
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_classdev {int dummy; } ;
struct gb_channel {int color; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int dev_err (struct device*,char*,int) ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int gb_lights_color_set (struct gb_channel*,int ) ;
 struct gb_channel* get_channel_from_cdev (struct led_classdev*) ;
 int kstrtou32 (char const*,int ,int *) ;
 int led_lock (struct led_classdev*) ;
 scalar_t__ led_sysfs_is_disabled (struct led_classdev*) ;
 int led_unlock (struct led_classdev*) ;

__attribute__((used)) static ssize_t color_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t size)
{
 struct led_classdev *cdev = dev_get_drvdata(dev);
 struct gb_channel *channel = get_channel_from_cdev(cdev);
 u32 color;
 int ret;

 led_lock(cdev);
 if (led_sysfs_is_disabled(cdev)) {
  ret = -EBUSY;
  goto unlock;
 }
 ret = kstrtou32(buf, 0, &color);
 if (ret < 0) {
  dev_err(dev, "could not parse color value %d\n", ret);
  goto unlock;
 }

 ret = gb_lights_color_set(channel, color);
 if (ret < 0)
  goto unlock;

 channel->color = color;
 ret = size;
unlock:
 led_unlock(cdev);
 return ret;
}
