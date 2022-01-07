
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_laptop {int ledd_status; } ;
typedef int ssize_t ;


 struct asus_laptop* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ledd_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct asus_laptop *asus = dev_get_drvdata(dev);

 return sprintf(buf, "0x%08x\n", asus->ledd_status);
}
