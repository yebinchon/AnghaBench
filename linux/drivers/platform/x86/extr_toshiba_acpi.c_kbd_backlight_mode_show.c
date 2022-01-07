
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct toshiba_acpi_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int SCI_KBD_MODE_MASK ;
 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ toshiba_kbd_illum_status_get (struct toshiba_acpi_dev*,int*) ;

__attribute__((used)) static ssize_t kbd_backlight_mode_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);
 u32 time;

 if (toshiba_kbd_illum_status_get(toshiba, &time) < 0)
  return -EIO;

 return sprintf(buf, "%i\n", time & SCI_KBD_MODE_MASK);
}
