
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_laptop {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct samsung_laptop* dev_get_drvdata (struct device*) ;
 int read_usb_charge (struct samsung_laptop*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t get_usb_charge(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct samsung_laptop *samsung = dev_get_drvdata(dev);
 int ret;

 ret = read_usb_charge(samsung);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n", ret);
}
