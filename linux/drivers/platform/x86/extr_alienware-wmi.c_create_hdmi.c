
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int hdmi_attribute_group ;
 int remove_hdmi (struct platform_device*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int create_hdmi(struct platform_device *dev)
{
 int ret;

 ret = sysfs_create_group(&dev->dev.kobj, &hdmi_attribute_group);
 if (ret)
  remove_hdmi(dev);
 return ret;
}
