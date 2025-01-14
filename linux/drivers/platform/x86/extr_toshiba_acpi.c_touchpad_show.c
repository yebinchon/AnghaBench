
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
 int sprintf (char*,char*,int) ;
 int toshiba_touchpad_get (struct toshiba_acpi_dev*,int*) ;

__attribute__((used)) static ssize_t touchpad_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 u32 state;
 int ret;

 ret = toshiba_touchpad_get(toshiba, &state);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%i\n", state);
}
