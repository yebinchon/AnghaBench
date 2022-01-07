
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct toshiba_acpi_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SCI_USB_CHARGE_MODE_MASK ;
 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 int toshiba_usb_sleep_charge_get (struct toshiba_acpi_dev*,int*) ;

__attribute__((used)) static ssize_t usb_sleep_charge_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 u32 mode;
 int ret;

 ret = toshiba_usb_sleep_charge_get(toshiba, &mode);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%x\n", mode & SCI_USB_CHARGE_MODE_MASK);
}
