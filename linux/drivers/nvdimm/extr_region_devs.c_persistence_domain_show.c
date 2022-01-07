
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ND_REGION_PERSIST_CACHE ;
 int ND_REGION_PERSIST_MEMCTRL ;
 int sprintf (char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static ssize_t persistence_domain_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region *nd_region = to_nd_region(dev);

 if (test_bit(ND_REGION_PERSIST_CACHE, &nd_region->flags))
  return sprintf(buf, "cpu_cache\n");
 else if (test_bit(ND_REGION_PERSIST_MEMCTRL, &nd_region->flags))
  return sprintf(buf, "memory_controller\n");
 else
  return sprintf(buf, "\n");
}
