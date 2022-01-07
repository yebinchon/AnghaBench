
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 size_t smi_data_buf_realloc (unsigned long) ;
 int smi_data_lock ;

__attribute__((used)) static ssize_t smi_data_buf_size_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 unsigned long buf_size;
 ssize_t ret;

 buf_size = simple_strtoul(buf, ((void*)0), 10);


 mutex_lock(&smi_data_lock);
 ret = smi_data_buf_realloc(buf_size);
 mutex_unlock(&smi_data_lock);
 if (ret)
  return ret;

 return count;
}
