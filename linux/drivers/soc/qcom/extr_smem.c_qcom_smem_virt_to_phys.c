
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct smem_region {void* virt_base; int size; scalar_t__ aux_base; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {unsigned int num_regions; struct smem_region* regions; } ;


 TYPE_1__* __smem ;

phys_addr_t qcom_smem_virt_to_phys(void *p)
{
 unsigned i;

 for (i = 0; i < __smem->num_regions; i++) {
  struct smem_region *region = &__smem->regions[i];

  if (p < region->virt_base)
   continue;
  if (p < region->virt_base + region->size) {
   u64 offset = p - region->virt_base;

   return (phys_addr_t)region->aux_base + offset;
  }
 }

 return 0;
}
