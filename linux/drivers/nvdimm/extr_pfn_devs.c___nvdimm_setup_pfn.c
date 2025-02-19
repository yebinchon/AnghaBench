
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct vmem_altmap {scalar_t__ start; scalar_t__ end; void* end_pfn; scalar_t__ alloc; void* free; int reserve; int base_pfn; } ;
struct resource {scalar_t__ start; scalar_t__ end; void* end_pfn; scalar_t__ alloc; void* free; int reserve; int base_pfn; } ;
struct nd_pfn_sb {int npfns; int end_trunc; int start_pad; int dataoff; } ;
struct nd_pfn {scalar_t__ mode; void* npfns; struct nd_pfn_sb* pfn_sb; int dev; struct nd_namespace_common* ndns; } ;
struct nd_namespace_io {struct vmem_altmap res; } ;
struct nd_namespace_common {int dev; } ;
struct dev_pagemap {int flags; struct vmem_altmap altmap; struct vmem_altmap res; } ;
typedef scalar_t__ resource_size_t ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ PFN_MODE_PMEM ;
 scalar_t__ PFN_MODE_RAM ;
 int PGMAP_ALTMAP_VALID ;
 void* PHYS_PFN (scalar_t__) ;
 scalar_t__ __le32_to_cpu (int ) ;
 int dev_info (int *,char*,void*,void*) ;
 scalar_t__ info_block_reserve () ;
 int init_altmap_base (scalar_t__) ;
 int init_altmap_reserve (scalar_t__) ;
 void* le64_to_cpu (int ) ;
 int memcpy (struct vmem_altmap*,struct vmem_altmap*,int) ;
 scalar_t__ resource_size (struct vmem_altmap*) ;
 struct nd_namespace_io* to_nd_namespace_io (int *) ;

__attribute__((used)) static int __nvdimm_setup_pfn(struct nd_pfn *nd_pfn, struct dev_pagemap *pgmap)
{
 struct resource *res = &pgmap->res;
 struct vmem_altmap *altmap = &pgmap->altmap;
 struct nd_pfn_sb *pfn_sb = nd_pfn->pfn_sb;
 u64 offset = le64_to_cpu(pfn_sb->dataoff);
 u32 start_pad = __le32_to_cpu(pfn_sb->start_pad);
 u32 end_trunc = __le32_to_cpu(pfn_sb->end_trunc);
 u32 reserve = info_block_reserve();
 struct nd_namespace_common *ndns = nd_pfn->ndns;
 struct nd_namespace_io *nsio = to_nd_namespace_io(&ndns->dev);
 resource_size_t base = nsio->res.start + start_pad;
 resource_size_t end = nsio->res.end - end_trunc;
 struct vmem_altmap __altmap = {
  .base_pfn = init_altmap_base(base),
  .reserve = init_altmap_reserve(base),
  .end_pfn = PHYS_PFN(end),
 };

 memcpy(res, &nsio->res, sizeof(*res));
 res->start += start_pad;
 res->end -= end_trunc;

 if (nd_pfn->mode == PFN_MODE_RAM) {
  if (offset < reserve)
   return -EINVAL;
  nd_pfn->npfns = le64_to_cpu(pfn_sb->npfns);
 } else if (nd_pfn->mode == PFN_MODE_PMEM) {
  nd_pfn->npfns = PHYS_PFN((resource_size(res) - offset));
  if (le64_to_cpu(nd_pfn->pfn_sb->npfns) > nd_pfn->npfns)
   dev_info(&nd_pfn->dev,
     "number of pfns truncated from %lld to %ld\n",
     le64_to_cpu(nd_pfn->pfn_sb->npfns),
     nd_pfn->npfns);
  memcpy(altmap, &__altmap, sizeof(*altmap));
  altmap->free = PHYS_PFN(offset - reserve);
  altmap->alloc = 0;
  pgmap->flags |= PGMAP_ALTMAP_VALID;
 } else
  return -ENXIO;

 return 0;
}
