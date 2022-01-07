
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int flags; } ;
struct nd_region {int ndr_mappings; struct nd_mapping* mapping; } ;
struct device {int parent; } ;
struct nd_namespace_common {struct device dev; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;


 int NDD_LOCKED ;
 int dev_dbg (struct device*,char*,int ) ;
 int nvdimm_name (struct nvdimm*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct nd_region* to_nd_region (int ) ;

bool nvdimm_namespace_locked(struct nd_namespace_common *ndns)
{
 int i;
 bool locked = 0;
 struct device *dev = &ndns->dev;
 struct nd_region *nd_region = to_nd_region(dev->parent);

 for (i = 0; i < nd_region->ndr_mappings; i++) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[i];
  struct nvdimm *nvdimm = nd_mapping->nvdimm;

  if (test_bit(NDD_LOCKED, &nvdimm->flags)) {
   dev_dbg(dev, "%s locked\n", nvdimm_name(nvdimm));
   locked = 1;
  }
 }
 return locked;
}
