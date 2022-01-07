
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int XLLF_TDFD_OFFSET ;
 int sysfs_write (struct device*,char const*,size_t,int ) ;

__attribute__((used)) static ssize_t tdfd_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 return sysfs_write(dev, buf, count, XLLF_TDFD_OFFSET);
}
