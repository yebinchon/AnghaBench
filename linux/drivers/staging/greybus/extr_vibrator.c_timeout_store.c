
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_vibrator_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_err (struct device*,char*,int) ;
 struct gb_vibrator_device* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int turn_off (struct gb_vibrator_device*) ;
 int turn_on (struct gb_vibrator_device*,int ) ;

__attribute__((used)) static ssize_t timeout_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct gb_vibrator_device *vib = dev_get_drvdata(dev);
 unsigned long val;
 int retval;

 retval = kstrtoul(buf, 10, &val);
 if (retval < 0) {
  dev_err(dev, "could not parse timeout value %d\n", retval);
  return retval;
 }

 if (val)
  retval = turn_on(vib, (u16)val);
 else
  retval = turn_off(vib);
 if (retval)
  return retval;

 return count;
}
