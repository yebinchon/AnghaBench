
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct max77693_charger max77693_charger ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct max77693_charger* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t device_attr_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count,
  int (*fn)(struct max77693_charger *, unsigned long))
{
 struct max77693_charger *chg = dev_get_drvdata(dev);
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 ret = fn(chg, val);
 if (ret)
  return ret;

 return count;
}
