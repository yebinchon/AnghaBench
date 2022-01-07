
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtouint (char const*,int,unsigned int*) ;
 int parahotplug_request_complete (unsigned int,int) ;

__attribute__((used)) static ssize_t deviceenabled_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 unsigned int id;

 if (kstrtouint(buf, 10, &id))
  return -EINVAL;
 parahotplug_request_complete(id, 1);
 return count;
}
