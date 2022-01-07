
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long HZ ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 unsigned long lb_interval_jiffies ;

__attribute__((used)) static ssize_t interval_msec_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 unsigned long msec;

 if (kstrtoul(buf, 0, &msec))
  return -EINVAL;

 lb_interval_jiffies = msec * HZ / 1000;

 return count;
}
