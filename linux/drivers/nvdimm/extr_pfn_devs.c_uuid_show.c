
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_pfn {scalar_t__ uuid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,...) ;
 struct nd_pfn* to_nd_pfn_safe (struct device*) ;

__attribute__((used)) static ssize_t uuid_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_pfn *nd_pfn = to_nd_pfn_safe(dev);

 if (nd_pfn->uuid)
  return sprintf(buf, "%pUb\n", nd_pfn->uuid);
 return sprintf(buf, "\n");
}
