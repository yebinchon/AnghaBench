
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int dummy; } ;
struct eeepc_cpufv {int num; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct eeepc_laptop* dev_get_drvdata (struct device*) ;
 scalar_t__ get_cpufv (struct eeepc_laptop*,struct eeepc_cpufv*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t available_cpufv_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct eeepc_laptop *eeepc = dev_get_drvdata(dev);
 struct eeepc_cpufv c;
 int i;
 ssize_t len = 0;

 if (get_cpufv(eeepc, &c))
  return -ENODEV;
 for (i = 0; i < c.num; i++)
  len += sprintf(buf + len, "%d ", i);
 len += sprintf(buf + len, "\n");
 return len;
}
