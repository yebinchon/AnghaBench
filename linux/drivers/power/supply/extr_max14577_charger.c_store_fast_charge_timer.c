
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14577_charger {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct max14577_charger* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int max14577_set_fast_charge_timer (struct max14577_charger*,unsigned long) ;

__attribute__((used)) static ssize_t store_fast_charge_timer(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct max14577_charger *chg = dev_get_drvdata(dev);
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 ret = max14577_set_fast_charge_timer(chg, val);
 if (ret)
  return ret;

 return count;
}
