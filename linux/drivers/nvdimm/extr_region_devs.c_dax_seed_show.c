
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {scalar_t__ dax_seed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* dev_name (scalar_t__) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int sprintf (char*,char*,...) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static ssize_t dax_seed_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region *nd_region = to_nd_region(dev);
 ssize_t rc;

 nvdimm_bus_lock(dev);
 if (nd_region->dax_seed)
  rc = sprintf(buf, "%s\n", dev_name(nd_region->dax_seed));
 else
  rc = sprintf(buf, "\n");
 nvdimm_bus_unlock(dev);

 return rc;
}
