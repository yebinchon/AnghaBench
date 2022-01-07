
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dcon_set_mono_mode (int ,int) ;
 int dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t dcon_mono_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 unsigned long enable_mono;
 int rc;

 rc = kstrtoul(buf, 10, &enable_mono);
 if (rc)
  return rc;

 dcon_set_mono_mode(dev_get_drvdata(dev), enable_mono ? 1 : 0);

 return count;
}
