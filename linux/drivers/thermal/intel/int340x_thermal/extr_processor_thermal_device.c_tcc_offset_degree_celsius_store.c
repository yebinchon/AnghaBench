
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BIT (int) ;
 int EACCES ;
 int EINVAL ;
 int MSR_PLATFORM_INFO ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int rdmsrl_safe (int ,int*) ;
 int tcc_offset_save ;
 int tcc_offset_update (int) ;

__attribute__((used)) static ssize_t tcc_offset_degree_celsius_store(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t count)
{
 u64 val;
 int tcc, err;

 err = rdmsrl_safe(MSR_PLATFORM_INFO, &val);
 if (err)
  return err;

 if (!(val & BIT(30)))
  return -EACCES;

 if (kstrtoint(buf, 0, &tcc))
  return -EINVAL;

 err = tcc_offset_update(tcc);
 if (err)
  return err;

 tcc_offset_save = tcc;

 return count;
}
