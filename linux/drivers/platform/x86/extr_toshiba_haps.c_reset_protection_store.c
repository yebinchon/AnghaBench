
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshiba_haps_dev {TYPE_1__* acpi_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 struct toshiba_haps_dev* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int toshiba_haps_reset_protection (int ) ;

__attribute__((used)) static ssize_t reset_protection_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct toshiba_haps_dev *haps = dev_get_drvdata(dev);
 int reset;
 int ret;

 ret = kstrtoint(buf, 0, &reset);
 if (ret)
  return ret;

 if (reset != 1)
  return -EINVAL;


 ret = toshiba_haps_reset_protection(haps->acpi_dev->handle);
 if (ret != 0)
  return ret;

 return count;
}
