
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dcon_sleep (int ,int) ;
 int dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t dcon_sleep_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 unsigned long output;
 int ret;

 ret = kstrtoul(buf, 10, &output);
 if (ret)
  return ret;

 dcon_sleep(dev_get_drvdata(dev), output ? 1 : 0);
 return count;
}
