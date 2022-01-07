
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_cur_state ) (struct thermal_cooling_device*,unsigned long*) ;} ;


 int sprintf (char*,char*,unsigned long) ;
 int stub1 (struct thermal_cooling_device*,unsigned long*) ;
 struct thermal_cooling_device* to_cooling_device (struct device*) ;

__attribute__((used)) static ssize_t cur_state_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct thermal_cooling_device *cdev = to_cooling_device(dev);
 unsigned long state;
 int ret;

 ret = cdev->ops->get_cur_state(cdev, &state);
 if (ret)
  return ret;
 return sprintf(buf, "%ld\n", state);
}
