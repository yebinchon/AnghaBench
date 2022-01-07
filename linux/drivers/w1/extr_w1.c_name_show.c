
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w1_slave *sl = dev_to_w1_slave(dev);

 return sprintf(buf, "%s\n", sl->name);
}
