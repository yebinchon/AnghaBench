
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EINVAL ;
 int abx80x_rtc_set_autocalibration (int ,unsigned long) ;
 int dev_err (struct device*,char*) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t autocalibration_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 int retval;
 unsigned long autocalibration = 0;

 retval = kstrtoul(buf, 10, &autocalibration);
 if (retval < 0) {
  dev_err(dev, "Failed to store RTC autocalibration attribute\n");
  return -EINVAL;
 }

 retval = abx80x_rtc_set_autocalibration(dev->parent, autocalibration);

 return retval ? retval : count;
}
