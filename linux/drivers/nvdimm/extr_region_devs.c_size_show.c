
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {unsigned long long ndr_size; int ndr_mappings; struct nd_mapping* mapping; } ;
struct nd_mapping {unsigned long long size; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ is_memory (struct device*) ;
 int sprintf (char*,char*,unsigned long long) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static ssize_t size_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region *nd_region = to_nd_region(dev);
 unsigned long long size = 0;

 if (is_memory(dev)) {
  size = nd_region->ndr_size;
 } else if (nd_region->ndr_mappings == 1) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[0];

  size = nd_mapping->size;
 }

 return sprintf(buf, "%llu\n", size);
}
