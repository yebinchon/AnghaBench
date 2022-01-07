
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_consumer_data {long max_uA; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct virtual_consumer_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int update_current_limit_constraints (struct device*,struct virtual_consumer_data*) ;

__attribute__((used)) static ssize_t set_max_uA(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct virtual_consumer_data *data = dev_get_drvdata(dev);
 long val;

 if (kstrtol(buf, 10, &val) != 0)
  return count;

 mutex_lock(&data->lock);

 data->max_uA = val;
 update_current_limit_constraints(dev, data);

 mutex_unlock(&data->lock);

 return count;
}
