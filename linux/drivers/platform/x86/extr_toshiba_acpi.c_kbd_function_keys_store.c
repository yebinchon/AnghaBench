
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
 int pr_info (char*) ;
 int toshiba_function_keys_set (struct toshiba_acpi_dev*,int) ;

__attribute__((used)) static ssize_t kbd_function_keys_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 int mode;
 int ret;

 ret = kstrtoint(buf, 0, &mode);
 if (ret)
  return ret;





 if (mode != 0 && mode != 1)
  return -EINVAL;

 ret = toshiba_function_keys_set(toshiba, mode);
 if (ret)
  return ret;

 pr_info("Reboot for changes to KBD Function Keys to take effect");

 return count;
}
