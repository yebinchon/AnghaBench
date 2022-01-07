
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int dev; } ;
struct nvdimm {int dummy; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;


 int __reserve_free_pmem ;
 int device_for_each_child (int *,struct nvdimm*,int ) ;
 int release_free_pmem (struct nvdimm_bus*,struct nd_mapping*) ;

__attribute__((used)) static int reserve_free_pmem(struct nvdimm_bus *nvdimm_bus,
  struct nd_mapping *nd_mapping)
{
 struct nvdimm *nvdimm = nd_mapping->nvdimm;
 int rc;

 rc = device_for_each_child(&nvdimm_bus->dev, nvdimm,
   __reserve_free_pmem);
 if (rc)
  release_free_pmem(nvdimm_bus, nd_mapping);
 return rc;
}
