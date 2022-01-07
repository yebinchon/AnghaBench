
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int ndr_start; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static ssize_t resource_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region *nd_region = to_nd_region(dev);

 return sprintf(buf, "%#llx\n", nd_region->ndr_start);
}
