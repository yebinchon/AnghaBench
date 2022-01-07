
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {struct w1_f19_data* family_data; } ;
struct w1_f19_data {char stretch; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct w1_slave* dev_to_w1_slave (struct device*) ;

__attribute__((used)) static ssize_t stretch_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct w1_slave *sl = dev_to_w1_slave(dev);
 struct w1_f19_data *data = sl->family_data;


 if (count < 1 || count > 2 || !buf)
  return -EINVAL;
 if (count == 2 && buf[1] != '\n')
  return -EINVAL;
 if (buf[0] < '1' || buf[0] > '9')
  return -EINVAL;


 data->stretch = buf[0] & 0x0F;


 return count;
}
