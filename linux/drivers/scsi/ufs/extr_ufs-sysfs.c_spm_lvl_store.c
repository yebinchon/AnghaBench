
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ufs_sysfs_pm_lvl_store (struct device*,struct device_attribute*,char const*,size_t,int) ;

__attribute__((used)) static ssize_t spm_lvl_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 return ufs_sysfs_pm_lvl_store(dev, attr, buf, count, 0);
}
