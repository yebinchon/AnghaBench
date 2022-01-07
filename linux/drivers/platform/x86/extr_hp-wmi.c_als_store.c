
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tmp ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int HPWMI_ALS_QUERY ;
 int HPWMI_WRITE ;
 int hp_wmi_perform_query (int ,int ,int *,int,int) ;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t als_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 u32 tmp = simple_strtoul(buf, ((void*)0), 10);
 int ret = hp_wmi_perform_query(HPWMI_ALS_QUERY, HPWMI_WRITE, &tmp,
           sizeof(tmp), sizeof(tmp));
 if (ret)
  return ret < 0 ? ret : -EINVAL;

 return count;
}
