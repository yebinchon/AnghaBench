
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct siox_master {int poll_interval; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int kstrtou64 (char const*,int ,int *) ;
 int nsecs_to_jiffies (int ) ;
 int siox_master_lock (struct siox_master*) ;
 int siox_master_unlock (struct siox_master*) ;
 struct siox_master* to_siox_master (struct device*) ;

__attribute__((used)) static ssize_t poll_interval_ns_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct siox_master *smaster = to_siox_master(dev);
 int ret;
 u64 val;

 ret = kstrtou64(buf, 0, &val);
 if (ret < 0)
  return ret;

 siox_master_lock(smaster);

 smaster->poll_interval = nsecs_to_jiffies(val);

 siox_master_unlock(smaster);

 return count;
}
