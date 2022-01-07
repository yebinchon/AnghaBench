
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_acpi_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int toshiba_usb_rapid_charge_set (struct toshiba_acpi_dev*,int) ;

__attribute__((used)) static ssize_t usb_rapid_charge_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 int state;
 int ret;

 ret = kstrtoint(buf, 0, &state);
 if (ret)
  return ret;
 if (state != 0 && state != 1)
  return -EINVAL;

 ret = toshiba_usb_rapid_charge_set(toshiba, state);
 if (ret)
  return ret;

 return count;
}
