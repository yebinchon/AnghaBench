
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_xri; } ;
struct TYPE_4__ {TYPE_1__ max_cfg_param; } ;
struct lpfc_hba {size_t cfg_rrq_xri_bitmap_sz; int active_rrq_pool; TYPE_2__ sli4_hba; } ;


 int BITS_PER_LONG ;
 int ENOMEM ;
 int LPFC_MEM_POOL_SIZE ;
 int mempool_create_kmalloc_pool (int ,size_t) ;

int
lpfc_mem_alloc_active_rrq_pool_s4(struct lpfc_hba *phba) {
 size_t bytes;
 int max_xri = phba->sli4_hba.max_cfg_param.max_xri;

 if (max_xri <= 0)
  return -ENOMEM;
 bytes = ((BITS_PER_LONG - 1 + max_xri) / BITS_PER_LONG) *
    sizeof(unsigned long);
 phba->cfg_rrq_xri_bitmap_sz = bytes;
 phba->active_rrq_pool = mempool_create_kmalloc_pool(LPFC_MEM_POOL_SIZE,
           bytes);
 if (!phba->active_rrq_pool)
  return -ENOMEM;
 else
  return 0;
}
