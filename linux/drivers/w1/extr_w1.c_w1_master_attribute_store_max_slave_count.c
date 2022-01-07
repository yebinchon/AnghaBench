
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_master {int max_slave_count; int mutex; int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int W1_WARN_MAX_COUNT ;
 int clear_bit (int ,int *) ;
 struct w1_master* dev_to_w1_master (struct device*) ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t w1_master_attribute_store_max_slave_count(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 int tmp;
 struct w1_master *md = dev_to_w1_master(dev);

 if (kstrtoint(buf, 0, &tmp) || tmp < 1)
  return -EINVAL;

 mutex_lock(&md->mutex);
 md->max_slave_count = tmp;

 clear_bit(W1_WARN_MAX_COUNT, &md->flags);
 mutex_unlock(&md->mutex);

 return count;
}
