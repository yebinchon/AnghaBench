
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct gb_channel {int color; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct led_classdev* dev_get_drvdata (struct device*) ;
 struct gb_channel* get_channel_from_cdev (struct led_classdev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t color_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct led_classdev *cdev = dev_get_drvdata(dev);
 struct gb_channel *channel = get_channel_from_cdev(cdev);

 return sprintf(buf, "0x%08x\n", channel->color);
}
