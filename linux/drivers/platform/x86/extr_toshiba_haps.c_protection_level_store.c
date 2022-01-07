
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshiba_haps_dev {int protection_level; TYPE_1__* acpi_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 struct toshiba_haps_dev* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int toshiba_haps_protection_level (int ,int) ;

__attribute__((used)) static ssize_t protection_level_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct toshiba_haps_dev *haps = dev_get_drvdata(dev);
 int level;
 int ret;

 ret = kstrtoint(buf, 0, &level);
 if (ret)
  return ret;




 if (level < 0 || level > 3)
  return -EINVAL;


 ret = toshiba_haps_protection_level(haps->acpi_dev->handle, level);
 if (ret != 0)
  return ret;

 haps->protection_level = level;

 return count;
}
