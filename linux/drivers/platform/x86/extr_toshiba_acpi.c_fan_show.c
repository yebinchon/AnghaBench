
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct toshiba_acpi_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int get_fan_status (struct toshiba_acpi_dev*,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fan_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 u32 value;
 int ret;

 ret = get_fan_status(toshiba, &value);
 if (ret)
  return ret;

 return sprintf(buf, "%d\n", value);
}
