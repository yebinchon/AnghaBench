
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_laptop {int dummy; } ;
typedef int ssize_t ;


 int asus_als_level (struct asus_laptop*,int) ;
 struct asus_laptop* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static ssize_t ls_level_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct asus_laptop *asus = dev_get_drvdata(dev);
 int rv, value;

 rv = kstrtoint(buf, 0, &value);
 if (rv < 0)
  return rv;

 value = (0 < value) ? ((15 < value) ? 15 : value) : 0;

 asus_als_level(asus, value);

 return count;
}
