
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int XLLF_RDFD_OFFSET ;
 int sysfs_read (struct device*,char*,int ) ;

__attribute__((used)) static ssize_t rdfd_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 return sysfs_read(dev, buf, XLLF_RDFD_OFFSET);
}
