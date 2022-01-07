
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int strtobool (char const*,int*) ;
 int userspace_control ;

__attribute__((used)) static ssize_t userspace_control_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf,
           size_t count)
{
 bool enable;
 int ret;

 ret = strtobool(buf, &enable);
 if (ret < 0)
  return ret;

 userspace_control = enable;

 return count;
}
