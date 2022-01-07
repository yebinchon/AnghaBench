
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 struct eeepc_laptop* dev_get_drvdata (struct device*) ;
 int get_acpi (struct eeepc_laptop*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_sys_acpi(struct device *dev, int cm, char *buf)
{
 struct eeepc_laptop *eeepc = dev_get_drvdata(dev);
 int value = get_acpi(eeepc, cm);

 if (value < 0)
  return -EIO;
 return sprintf(buf, "%d\n", value);
}
