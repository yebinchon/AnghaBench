
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int phys; int virt; } ;
struct TYPE_3__ {int phys; int virt; } ;
struct rqb_dmabuf {TYPE_2__ dbuf; TYPE_1__ hbuf; } ;
struct lpfc_hba {int lpfc_nvmet_drb_pool; int lpfc_hrb_pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct rqb_dmabuf*) ;

void
lpfc_sli4_nvmet_free(struct lpfc_hba *phba, struct rqb_dmabuf *dmab)
{
 dma_pool_free(phba->lpfc_hrb_pool, dmab->hbuf.virt, dmab->hbuf.phys);
 dma_pool_free(phba->lpfc_nvmet_drb_pool,
        dmab->dbuf.virt, dmab->dbuf.phys);
 kfree(dmab);
}
