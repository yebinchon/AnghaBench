
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct nvdimm {int dev; } ;
struct nd_region {size_t ndr_mappings; int id; int lane; struct nd_mapping* mapping; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;
struct device {int dummy; } ;


 int free_percpu (int ) ;
 int ida_simple_remove (int *,int ) ;
 scalar_t__ is_nd_blk (struct device*) ;
 int kfree (struct nd_region*) ;
 int put_device (int *) ;
 int region_ida ;
 struct nd_region* to_nd_blk_region (struct device*) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static void nd_region_release(struct device *dev)
{
 struct nd_region *nd_region = to_nd_region(dev);
 u16 i;

 for (i = 0; i < nd_region->ndr_mappings; i++) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[i];
  struct nvdimm *nvdimm = nd_mapping->nvdimm;

  put_device(&nvdimm->dev);
 }
 free_percpu(nd_region->lane);
 ida_simple_remove(&region_ida, nd_region->id);
 if (is_nd_blk(dev))
  kfree(to_nd_blk_region(dev));
 else
  kfree(nd_region);
}
