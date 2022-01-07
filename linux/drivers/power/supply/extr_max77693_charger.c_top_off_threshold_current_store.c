
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int device_attr_store (struct device*,struct device_attribute*,char const*,size_t,int ) ;
 int max77693_set_top_off_threshold_current ;

__attribute__((used)) static ssize_t top_off_threshold_current_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 return device_attr_store(dev, attr, buf, count,
   max77693_set_top_off_threshold_current);
}
