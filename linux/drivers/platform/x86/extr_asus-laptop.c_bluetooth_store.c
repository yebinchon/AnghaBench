
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_laptop {int dummy; } ;
typedef int ssize_t ;


 int METHOD_BLUETOOTH ;
 struct asus_laptop* dev_get_drvdata (struct device*) ;
 int sysfs_acpi_set (struct asus_laptop*,char const*,size_t,int ) ;

__attribute__((used)) static ssize_t bluetooth_store(struct device *dev,
          struct device_attribute *attr, const char *buf,
          size_t count)
{
 struct asus_laptop *asus = dev_get_drvdata(dev);

 return sysfs_acpi_set(asus, buf, count, METHOD_BLUETOOTH);
}
