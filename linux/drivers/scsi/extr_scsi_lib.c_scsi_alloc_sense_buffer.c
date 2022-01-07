
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 unsigned char* kmem_cache_alloc_node (int ,int ,int) ;
 int scsi_select_sense_cache (int) ;

__attribute__((used)) static unsigned char *scsi_alloc_sense_buffer(bool unchecked_isa_dma,
 gfp_t gfp_mask, int numa_node)
{
 return kmem_cache_alloc_node(scsi_select_sense_cache(unchecked_isa_dma),
         gfp_mask, numa_node);
}
