
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_laptop {int dummy; } ;
typedef int ssize_t ;


 int asus_als_switch (struct asus_laptop*,int) ;
 struct asus_laptop* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static ssize_t ls_switch_store(struct device *dev,
          struct device_attribute *attr, const char *buf,
          size_t count)
{
 struct asus_laptop *asus = dev_get_drvdata(dev);
 int rv, value;

 rv = kstrtoint(buf, 0, &value);
 if (rv < 0)
  return rv;

 asus_als_switch(asus, value ? 1 : 0);
 return count;
}
