
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int MSI_STANDARD_EC_FAN_ADDRESS ;
 int ec_write (int ,int) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t store_auto_fan(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{

 int enable, result;

 if (sscanf(buf, "%i", &enable) != 1 || (enable != (enable & 1)))
  return -EINVAL;

 result = ec_write(MSI_STANDARD_EC_FAN_ADDRESS, enable);
 if (result < 0)
  return result;

 return count;
}
