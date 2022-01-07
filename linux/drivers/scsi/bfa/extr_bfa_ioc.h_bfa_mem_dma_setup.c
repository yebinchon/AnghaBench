
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qe; } ;
struct bfa_meminfo_s {TYPE_1__ dma_info; } ;
struct bfa_mem_dma_s {size_t mem_len; int qe; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void bfa_mem_dma_setup(struct bfa_meminfo_s *meminfo,
         struct bfa_mem_dma_s *dm_ptr,
         size_t seg_sz)
{
 dm_ptr->mem_len = seg_sz;
 if (seg_sz)
  list_add_tail(&dm_ptr->qe, &meminfo->dma_info.qe);
}
