
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dim2_sysfs_get_state_cb () ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t state_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 bool state = dim2_sysfs_get_state_cb();

 return sprintf(buf, "%s\n", state ? "locked" : "");
}
