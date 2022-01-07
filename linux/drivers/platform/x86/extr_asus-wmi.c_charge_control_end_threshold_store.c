
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ASUS_WMI_DEVID_RSOC ;
 int EINVAL ;
 int EIO ;
 int asus_wmi_set_devstate (int ,int,int*) ;
 int charge_end_threshold ;
 int kstrtouint (char const*,int,int*) ;

__attribute__((used)) static ssize_t charge_control_end_threshold_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 int value, ret, rv;

 ret = kstrtouint(buf, 10, &value);
 if (ret)
  return ret;

 if (value < 0 || value > 100)
  return -EINVAL;

 ret = asus_wmi_set_devstate(ASUS_WMI_DEVID_RSOC, value, &rv);
 if (ret)
  return ret;

 if (rv != 1)
  return -EIO;




 charge_end_threshold = value;
 return count;
}
