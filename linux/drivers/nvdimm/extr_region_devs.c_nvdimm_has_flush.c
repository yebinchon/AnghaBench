
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {scalar_t__ num_flush; } ;
struct nd_region {int ndr_mappings; struct nd_mapping* mapping; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;


 int CONFIG_ARCH_HAS_PMEM_API ;
 int ENXIO ;
 int IS_ENABLED (int ) ;

int nvdimm_has_flush(struct nd_region *nd_region)
{
 int i;


 if (nd_region->ndr_mappings == 0
   || !IS_ENABLED(CONFIG_ARCH_HAS_PMEM_API))
  return -ENXIO;

 for (i = 0; i < nd_region->ndr_mappings; i++) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[i];
  struct nvdimm *nvdimm = nd_mapping->nvdimm;


  if (nvdimm->num_flush)
   return 1;
 }





 return 0;
}
