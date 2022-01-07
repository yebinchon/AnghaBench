
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct w1_slave {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int DS2438_ADC_INPUT_VDD ;
 int EINVAL ;
 int EIO ;
 struct w1_slave* kobj_to_w1_slave (struct kobject*) ;
 int snprintf (char*,size_t,char*,int) ;
 scalar_t__ w1_ds2438_get_voltage (struct w1_slave*,int ,int*) ;

__attribute__((used)) static ssize_t vdd_read(struct file *filp, struct kobject *kobj,
   struct bin_attribute *bin_attr, char *buf,
   loff_t off, size_t count)
{
 struct w1_slave *sl = kobj_to_w1_slave(kobj);
 int ret;
 uint16_t voltage;

 if (off != 0)
  return 0;
 if (!buf)
  return -EINVAL;

 if (w1_ds2438_get_voltage(sl, DS2438_ADC_INPUT_VDD, &voltage) == 0) {
  ret = snprintf(buf, count, "%u\n", voltage);
 } else
  ret = -EIO;

 return ret;
}
