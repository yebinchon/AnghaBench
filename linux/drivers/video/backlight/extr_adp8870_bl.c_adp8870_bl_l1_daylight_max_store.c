
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adp8870_bl {int cached_daylight_max; } ;
typedef int ssize_t ;


 int ADP8870_BLMX1 ;
 int adp8870_store (struct device*,char const*,size_t,int ) ;
 struct adp8870_bl* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,int *) ;

__attribute__((used)) static ssize_t adp8870_bl_l1_daylight_max_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct adp8870_bl *data = dev_get_drvdata(dev);
 int ret = kstrtoul(buf, 10, &data->cached_daylight_max);

 if (ret)
  return ret;

 return adp8870_store(dev, buf, count, ADP8870_BLMX1);
}
