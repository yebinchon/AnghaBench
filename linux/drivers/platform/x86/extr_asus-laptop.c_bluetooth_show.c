
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_laptop {int dummy; } ;
typedef int ssize_t ;


 int BT_RSTS ;
 int asus_wireless_status (struct asus_laptop*,int ) ;
 struct asus_laptop* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t bluetooth_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct asus_laptop *asus = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", asus_wireless_status(asus, BT_RSTS));
}
