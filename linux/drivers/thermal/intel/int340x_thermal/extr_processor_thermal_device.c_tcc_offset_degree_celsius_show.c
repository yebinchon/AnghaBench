
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MSR_IA32_TEMPERATURE_TARGET ;
 int rdmsrl_safe (int ,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t tcc_offset_degree_celsius_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 u64 val;
 int err;

 err = rdmsrl_safe(MSR_IA32_TEMPERATURE_TARGET, &val);
 if (err)
  return err;

 val = (val >> 24) & 0xff;
 return sprintf(buf, "%d\n", (int)val);
}
