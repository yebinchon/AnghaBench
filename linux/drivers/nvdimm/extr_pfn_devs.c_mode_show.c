
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_pfn {int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;




 int sprintf (char*,char*) ;
 struct nd_pfn* to_nd_pfn_safe (struct device*) ;

__attribute__((used)) static ssize_t mode_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_pfn *nd_pfn = to_nd_pfn_safe(dev);

 switch (nd_pfn->mode) {
 case 128:
  return sprintf(buf, "ram\n");
 case 129:
  return sprintf(buf, "pmem\n");
 default:
  return sprintf(buf, "none\n");
 }
}
