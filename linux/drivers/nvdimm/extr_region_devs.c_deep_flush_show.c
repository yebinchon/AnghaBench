
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int nvdimm_has_flush (struct nd_region*) ;
 int sprintf (char*,char*,int) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static ssize_t deep_flush_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region *nd_region = to_nd_region(dev);





 return sprintf(buf, "%d\n", nvdimm_has_flush(nd_region));
}
