
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct toshiba_acpi_dev {int usbsc_bat_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int HCI_MISC_SHIFT ;
 int SCI_USB_CHARGE_BAT_LVL_OFF ;
 int SCI_USB_CHARGE_BAT_LVL_ON ;
 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int toshiba_sleep_functions_status_set (struct toshiba_acpi_dev*,int) ;

__attribute__((used)) static ssize_t sleep_functions_on_battery_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 u32 status;
 int value;
 int ret;
 int tmp;

 ret = kstrtoint(buf, 0, &value);
 if (ret)
  return ret;






 if (value < 0 || value > 100)
  return -EINVAL;

 if (value == 0) {
  tmp = toshiba->usbsc_bat_level << HCI_MISC_SHIFT;
  status = tmp | SCI_USB_CHARGE_BAT_LVL_OFF;
 } else {
  tmp = value << HCI_MISC_SHIFT;
  status = tmp | SCI_USB_CHARGE_BAT_LVL_ON;
 }
 ret = toshiba_sleep_functions_status_set(toshiba, status);
 if (ret < 0)
  return ret;

 toshiba->usbsc_bat_level = status >> HCI_MISC_SHIFT;

 return count;
}
