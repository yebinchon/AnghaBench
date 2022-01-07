
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 char* dev_driver_string (int ) ;
 char* dev_name (int ) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static ssize_t
name_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%s %s\n", dev_driver_string(dev->parent),
         dev_name(dev->parent));
}
