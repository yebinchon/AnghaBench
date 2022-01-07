
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int sscanf (char const*,char*,int *) ;
 int usbip_debug_flag ;

__attribute__((used)) static ssize_t usbip_debug_store(struct device *dev,
     struct device_attribute *attr, const char *buf,
     size_t count)
{
 if (sscanf(buf, "%lx", &usbip_debug_flag) != 1)
  return -EINVAL;
 return count;
}
