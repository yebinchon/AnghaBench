
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int sprintf (char*,char*,int) ;
 int w1_f19_get_i2c_speed (struct w1_slave*) ;

__attribute__((used)) static ssize_t speed_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct w1_slave *sl = dev_to_w1_slave(dev);
 int result;


 result = w1_f19_get_i2c_speed(sl);
 if (result < 0)
  return result;


 return sprintf(buf, "%d\n", result);
}
