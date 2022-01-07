
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int ns_current; } ;
struct nd_region {struct nd_mapping* mapping; scalar_t__ ndr_mappings; struct nd_interleave_set* nd_set; } ;
struct nd_namespace_index {int dummy; } ;
struct nd_mapping {int dummy; } ;
struct nd_interleave_set {int cookie1; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ENXIO ;
 scalar_t__ is_memory (struct device*) ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int nd_region_interleave_set_cookie (struct nd_region*,struct nd_namespace_index*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 scalar_t__ sprintf (char*,char*,int ) ;
 struct nd_namespace_index* to_namespace_index (struct nvdimm_drvdata*,int ) ;
 struct nd_region* to_nd_region (struct device*) ;
 struct nvdimm_drvdata* to_ndd (struct nd_mapping*) ;
 int wait_nvdimm_bus_probe_idle (struct device*) ;

__attribute__((used)) static ssize_t set_cookie_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region *nd_region = to_nd_region(dev);
 struct nd_interleave_set *nd_set = nd_region->nd_set;
 ssize_t rc = 0;

 if (is_memory(dev) && nd_set)
                                                   ;
 else
  return -ENXIO;







 nd_device_lock(dev);
 nvdimm_bus_lock(dev);
 wait_nvdimm_bus_probe_idle(dev);
 if (nd_region->ndr_mappings) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[0];
  struct nvdimm_drvdata *ndd = to_ndd(nd_mapping);

  if (ndd) {
   struct nd_namespace_index *nsindex;

   nsindex = to_namespace_index(ndd, ndd->ns_current);
   rc = sprintf(buf, "%#llx\n",
     nd_region_interleave_set_cookie(nd_region,
      nsindex));
  }
 }
 nvdimm_bus_unlock(dev);
 nd_device_unlock(dev);

 if (rc)
  return rc;
 return sprintf(buf, "%#llx\n", nd_set->cookie1);
}
