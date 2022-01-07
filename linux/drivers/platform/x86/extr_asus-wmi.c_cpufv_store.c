
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ASUS_WMI_METHODID_CFVS ;
 int EINVAL ;
 int asus_wmi_evaluate_method (int ,int,int ,int *) ;
 int kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static ssize_t cpufv_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 int value, rv;

 rv = kstrtoint(buf, 0, &value);
 if (rv)
  return rv;

 if (value < 0 || value > 2)
  return -EINVAL;

 rv = asus_wmi_evaluate_method(ASUS_WMI_METHODID_CFVS, value, 0, ((void*)0));
 if (rv < 0)
  return rv;

 return count;
}
