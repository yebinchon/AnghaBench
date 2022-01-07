
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcd_device {int ops_lock; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* set_power ) (struct lcd_device*,unsigned long) ;} ;


 int ENXIO ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,unsigned long) ;
 int stub1 (struct lcd_device*,unsigned long) ;
 struct lcd_device* to_lcd_device (struct device*) ;

__attribute__((used)) static ssize_t lcd_power_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 int rc;
 struct lcd_device *ld = to_lcd_device(dev);
 unsigned long power;

 rc = kstrtoul(buf, 0, &power);
 if (rc)
  return rc;

 rc = -ENXIO;

 mutex_lock(&ld->ops_lock);
 if (ld->ops && ld->ops->set_power) {
  pr_debug("set power to %lu\n", power);
  ld->ops->set_power(ld, power);
  rc = count;
 }
 mutex_unlock(&ld->ops_lock);

 return rc;
}
