
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct toshiba_acpi_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HCI_MISC_SHIFT ;
 int SCI_USB_CHARGE_BAT_MASK ;
 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int,int) ;
 int toshiba_sleep_functions_status_get (struct toshiba_acpi_dev*,int*) ;

__attribute__((used)) static ssize_t sleep_functions_on_battery_show(struct device *dev,
            struct device_attribute *attr,
            char *buf)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 int bat_lvl, status;
 u32 state;
 int ret;
 int tmp;

 ret = toshiba_sleep_functions_status_get(toshiba, &state);
 if (ret < 0)
  return ret;


 tmp = state & SCI_USB_CHARGE_BAT_MASK;
 status = (tmp == 0x4) ? 1 : 0;

 bat_lvl = state >> HCI_MISC_SHIFT;

 return sprintf(buf, "%d %d\n", status, bat_lvl);
}
