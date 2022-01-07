
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ kstrtouint (char const*,int,unsigned int*) ;
 int parahotplug_request_complete (unsigned int,int ) ;

__attribute__((used)) static ssize_t devicedisabled_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 unsigned int id;
 int err;

 if (kstrtouint(buf, 10, &id))
  return -EINVAL;
 err = parahotplug_request_complete(id, 0);
 if (err < 0)
  return err;
 return count;
}
