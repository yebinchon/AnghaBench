
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int rfkill; } ;
struct asus_laptop {TYPE_1__ gps; } ;
typedef int ssize_t ;


 int asus_gps_switch (struct asus_laptop*,int) ;
 struct asus_laptop* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int rfkill_set_sw_state (int ,int) ;

__attribute__((used)) static ssize_t gps_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct asus_laptop *asus = dev_get_drvdata(dev);
 int rv, value;
 int ret;

 rv = kstrtoint(buf, 0, &value);
 if (rv < 0)
  return rv;
 ret = asus_gps_switch(asus, !!value);
 if (ret)
  return ret;
 rfkill_set_sw_state(asus->gps.rfkill, !value);
 return count;
}
