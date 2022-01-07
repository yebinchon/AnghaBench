
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_hba {int lpfc_hbq_pool; } ;
struct TYPE_2__ {int phys; int virt; } ;
struct hbq_dmabuf {TYPE_1__ dbuf; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct hbq_dmabuf*) ;

void
lpfc_els_hbq_free(struct lpfc_hba *phba, struct hbq_dmabuf *hbqbp)
{
 dma_pool_free(phba->lpfc_hbq_pool, hbqbp->dbuf.virt, hbqbp->dbuf.phys);
 kfree(hbqbp);
 return;
}
