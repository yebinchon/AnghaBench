
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_acpi_dev {int kbd_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct toshiba_acpi_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t kbd_type_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct toshiba_acpi_dev *toshiba = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", toshiba->kbd_type);
}
