
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_acpi_dev {int kbd_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SCI_KBD_MODE_AUTO ;
 int SCI_KBD_MODE_FNZ ;
 int SCI_KBD_MODE_OFF ;
 int SCI_KBD_MODE_ON ;
 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int,int,...) ;

__attribute__((used)) static ssize_t available_kbd_modes_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);

 if (toshiba->kbd_type == 1)
  return sprintf(buf, "0x%x 0x%x\n",
          SCI_KBD_MODE_FNZ, SCI_KBD_MODE_AUTO);

 return sprintf(buf, "0x%x 0x%x 0x%x\n",
         SCI_KBD_MODE_AUTO, SCI_KBD_MODE_ON, SCI_KBD_MODE_OFF);
}
