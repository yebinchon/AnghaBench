
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int lock; } ;


 size_t EINVAL ;
 int __sony_pic_set_bluetoothpower (unsigned long) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ spic_dev ;

__attribute__((used)) static ssize_t sony_pic_bluetoothpower_store(struct device *dev,
  struct device_attribute *attr,
  const char *buffer, size_t count)
{
 unsigned long value;
 if (count > 31)
  return -EINVAL;

 if (kstrtoul(buffer, 10, &value))
  return -EINVAL;

 mutex_lock(&spic_dev.lock);
 __sony_pic_set_bluetoothpower(value);
 mutex_unlock(&spic_dev.lock);

 return count;
}
