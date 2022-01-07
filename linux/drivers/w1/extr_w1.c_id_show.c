
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w1_slave {int reg_num; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static ssize_t id_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct w1_slave *sl = dev_to_w1_slave(dev);
 ssize_t count = sizeof(sl->reg_num);

 memcpy(buf, (u8 *)&sl->reg_num, count);
 return count;
}
