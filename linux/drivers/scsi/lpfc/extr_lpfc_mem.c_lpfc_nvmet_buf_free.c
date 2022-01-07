
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int lpfc_sg_dma_buf_pool; } ;
typedef int dma_addr_t ;


 int dma_pool_free (int ,void*,int ) ;

void
lpfc_nvmet_buf_free(struct lpfc_hba *phba, void *virt, dma_addr_t dma)
{
 dma_pool_free(phba->lpfc_sg_dma_buf_pool, virt, dma);
}
