
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int lpfc_sg_dma_buf_pool; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 void* dma_pool_alloc (int ,int ,int *) ;

void *
lpfc_nvmet_buf_alloc(struct lpfc_hba *phba, int mem_flags, dma_addr_t *handle)
{
 void *ret;

 ret = dma_pool_alloc(phba->lpfc_sg_dma_buf_pool, GFP_KERNEL, handle);
 return ret;
}
