
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int cpufv_disabled; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct eeepc_laptop* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t cpufv_disabled_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct eeepc_laptop *eeepc = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", eeepc->cpufv_disabled);
}
