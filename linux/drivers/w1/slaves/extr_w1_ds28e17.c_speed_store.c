
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int w1_f19_set_i2c_speed (struct w1_slave*,int) ;

__attribute__((used)) static ssize_t speed_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct w1_slave *sl = dev_to_w1_slave(dev);
 int error;


 if (count < 3 || count > 4 || !buf)
  return -EINVAL;
 if (count == 4 && buf[3] != '\n')
  return -EINVAL;
 if (buf[1] != '0' || buf[2] != '0')
  return -EINVAL;


 switch (buf[0]) {
 case '1':
  error = w1_f19_set_i2c_speed(sl, 0);
  break;
 case '4':
  error = w1_f19_set_i2c_speed(sl, 1);
  break;
 case '9':
  error = w1_f19_set_i2c_speed(sl, 2);
  break;
 default:
  return -EINVAL;
 }

 if (error < 0)
  return error;


 return count;
}
