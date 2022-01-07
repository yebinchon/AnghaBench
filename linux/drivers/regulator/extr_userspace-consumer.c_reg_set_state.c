
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userspace_consumer_data {int enabled; int lock; int supplies; int num_supplies; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int dev_err (struct device*,char*,...) ;
 struct userspace_consumer_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t reg_set_state(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct userspace_consumer_data *data = dev_get_drvdata(dev);
 bool enabled;
 int ret;





 if (sysfs_streq(buf, "enabled\n") || sysfs_streq(buf, "1"))
  enabled = 1;
 else if (sysfs_streq(buf, "disabled\n") || sysfs_streq(buf, "0"))
  enabled = 0;
 else {
  dev_err(dev, "Configuring invalid mode\n");
  return count;
 }

 mutex_lock(&data->lock);
 if (enabled != data->enabled) {
  if (enabled)
   ret = regulator_bulk_enable(data->num_supplies,
          data->supplies);
  else
   ret = regulator_bulk_disable(data->num_supplies,
           data->supplies);

  if (ret == 0)
   data->enabled = enabled;
  else
   dev_err(dev, "Failed to configure state: %d\n", ret);
 }
 mutex_unlock(&data->lock);

 return count;
}
