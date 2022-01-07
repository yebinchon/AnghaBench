
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_master {long enable_pullup; int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct w1_master* dev_to_w1_master (struct device*) ;
 int kstrtol (char const*,int ,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t w1_master_attribute_store_pullup(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 long tmp;
 struct w1_master *md = dev_to_w1_master(dev);
 int ret;

 ret = kstrtol(buf, 0, &tmp);
 if (ret)
  return ret;

 mutex_lock(&md->mutex);
 md->enable_pullup = tmp;
 mutex_unlock(&md->mutex);

 return count;
}
