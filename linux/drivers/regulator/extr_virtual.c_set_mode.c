
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_consumer_data {unsigned int mode; int lock; int regulator; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;
 int dev_err (struct device*,char*,...) ;
 struct virtual_consumer_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_set_mode (int ,unsigned int) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t set_mode(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct virtual_consumer_data *data = dev_get_drvdata(dev);
 unsigned int mode;
 int ret;





 if (sysfs_streq(buf, "fast\n"))
  mode = REGULATOR_MODE_FAST;
 else if (sysfs_streq(buf, "normal\n"))
  mode = REGULATOR_MODE_NORMAL;
 else if (sysfs_streq(buf, "idle\n"))
  mode = REGULATOR_MODE_IDLE;
 else if (sysfs_streq(buf, "standby\n"))
  mode = REGULATOR_MODE_STANDBY;
 else {
  dev_err(dev, "Configuring invalid mode\n");
  return count;
 }

 mutex_lock(&data->lock);
 ret = regulator_set_mode(data->regulator, mode);
 if (ret == 0)
  data->mode = mode;
 else
  dev_err(dev, "Failed to configure mode: %d\n", ret);
 mutex_unlock(&data->lock);

 return count;
}
