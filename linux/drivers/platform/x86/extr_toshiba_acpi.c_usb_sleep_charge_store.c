
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct toshiba_acpi_dev {int usbsc_mode_base; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int SCI_USB_CHARGE_ALTERNATE ;
 int SCI_USB_CHARGE_AUTO ;
 int SCI_USB_CHARGE_DISABLED ;
 int SCI_USB_CHARGE_TYPICAL ;
 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int toshiba_usb_sleep_charge_set (struct toshiba_acpi_dev*,int ) ;

__attribute__((used)) static ssize_t usb_sleep_charge_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 int state;
 u32 mode;
 int ret;

 ret = kstrtoint(buf, 0, &state);
 if (ret)
  return ret;







 if (state != 0 && state != 1 && state != 2 && state != 3)
  return -EINVAL;


 mode = toshiba->usbsc_mode_base;
 if (state == 0)
  mode |= SCI_USB_CHARGE_DISABLED;
 else if (state == 1)
  mode |= SCI_USB_CHARGE_ALTERNATE;
 else if (state == 2)
  mode |= SCI_USB_CHARGE_AUTO;
 else if (state == 3)
  mode |= SCI_USB_CHARGE_TYPICAL;

 ret = toshiba_usb_sleep_charge_set(toshiba, mode);
 if (ret)
  return ret;

 return count;
}
