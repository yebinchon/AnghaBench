
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* dmabuf; int bmbx_size; } ;
struct TYPE_6__ {TYPE_3__ bmbx; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; TYPE_1__* pcidev; } ;
struct lpfc_bmbx {int dummy; } ;
struct TYPE_8__ {int phys; int virt; } ;
struct TYPE_5__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (TYPE_4__*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void
lpfc_destroy_bootstrap_mbox(struct lpfc_hba *phba)
{
 dma_free_coherent(&phba->pcidev->dev,
     phba->sli4_hba.bmbx.bmbx_size,
     phba->sli4_hba.bmbx.dmabuf->virt,
     phba->sli4_hba.bmbx.dmabuf->phys);

 kfree(phba->sli4_hba.bmbx.dmabuf);
 memset(&phba->sli4_hba.bmbx, 0, sizeof(struct lpfc_bmbx));
}
