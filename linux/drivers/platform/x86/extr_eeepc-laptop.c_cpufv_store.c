
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {scalar_t__ cpufv_disabled; } ;
struct eeepc_cpufv {int num; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CM_ASL_CPUFV ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 struct eeepc_laptop* dev_get_drvdata (struct device*) ;
 scalar_t__ get_cpufv (struct eeepc_laptop*,struct eeepc_cpufv*) ;
 int parse_arg (char const*,int*) ;
 int set_acpi (struct eeepc_laptop*,int ,int) ;

__attribute__((used)) static ssize_t cpufv_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct eeepc_laptop *eeepc = dev_get_drvdata(dev);
 struct eeepc_cpufv c;
 int rv, value;

 if (eeepc->cpufv_disabled)
  return -EPERM;
 if (get_cpufv(eeepc, &c))
  return -ENODEV;
 rv = parse_arg(buf, &value);
 if (rv < 0)
  return rv;
 if (value < 0 || value >= c.num)
  return -EINVAL;
 rv = set_acpi(eeepc, CM_ASL_CPUFV, value);
 if (rv)
  return rv;
 return count;
}
