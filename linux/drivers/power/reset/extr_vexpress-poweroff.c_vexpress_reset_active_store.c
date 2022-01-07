
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int kstrtol (char const*,int ,long*) ;
 struct device* vexpress_restart_device ;

__attribute__((used)) static ssize_t vexpress_reset_active_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 long value;
 int err = kstrtol(buf, 0, &value);

 if (!err && value)
  vexpress_restart_device = dev;

 return err ? err : count;
}
