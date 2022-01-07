
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int tmp ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int HPWMI_POSTCODEERROR_QUERY ;
 int HPWMI_WRITE ;
 int hp_wmi_perform_query (int ,int ,scalar_t__*,int,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t postcode_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 long unsigned int tmp2;
 int ret;
 u32 tmp;

 ret = kstrtoul(buf, 10, &tmp2);
 if (!ret && tmp2 != 1)
  ret = -EINVAL;
 if (ret)
  goto out;


 tmp = (u32) tmp2;
 ret = hp_wmi_perform_query(HPWMI_POSTCODEERROR_QUERY, HPWMI_WRITE, &tmp,
           sizeof(tmp), sizeof(tmp));

out:
 if (ret)
  return ret < 0 ? ret : -EINVAL;

 return count;
}
