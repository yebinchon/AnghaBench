
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sli_flag; } ;
struct TYPE_3__ {int lpfc_wq_list; int mbx_cq; int nvmels_cq; int els_cq; int dat_rq; int hdr_rq; int nvmels_wq; int els_wq; int mbx_wq; int nvmet_mrq_data; int nvmet_mrq_hdr; int nvmet_cqset; scalar_t__ hdwq; } ;
struct lpfc_hba {int hbalock; TYPE_2__ sli; TYPE_1__ sli4_hba; int cfg_nvmet_mrq; scalar_t__ nvmet_support; } ;


 int INIT_LIST_HEAD (int *) ;
 int LPFC_QUEUE_FREE_INIT ;
 int LPFC_QUEUE_FREE_WAIT ;
 int __lpfc_sli4_release_queue (int *) ;
 int lpfc_sli4_release_hdwq (struct lpfc_hba*) ;
 int lpfc_sli4_release_queues (int *,int ) ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_sli4_queue_destroy(struct lpfc_hba *phba)
{





 spin_lock_irq(&phba->hbalock);
 phba->sli.sli_flag |= LPFC_QUEUE_FREE_INIT;
 while (phba->sli.sli_flag & LPFC_QUEUE_FREE_WAIT) {
  spin_unlock_irq(&phba->hbalock);
  msleep(20);
  spin_lock_irq(&phba->hbalock);
 }
 spin_unlock_irq(&phba->hbalock);


 if (phba->sli4_hba.hdwq)
  lpfc_sli4_release_hdwq(phba);

 if (phba->nvmet_support) {
  lpfc_sli4_release_queues(&phba->sli4_hba.nvmet_cqset,
      phba->cfg_nvmet_mrq);

  lpfc_sli4_release_queues(&phba->sli4_hba.nvmet_mrq_hdr,
      phba->cfg_nvmet_mrq);
  lpfc_sli4_release_queues(&phba->sli4_hba.nvmet_mrq_data,
      phba->cfg_nvmet_mrq);
 }


 __lpfc_sli4_release_queue(&phba->sli4_hba.mbx_wq);


 __lpfc_sli4_release_queue(&phba->sli4_hba.els_wq);


 __lpfc_sli4_release_queue(&phba->sli4_hba.nvmels_wq);


 __lpfc_sli4_release_queue(&phba->sli4_hba.hdr_rq);
 __lpfc_sli4_release_queue(&phba->sli4_hba.dat_rq);


 __lpfc_sli4_release_queue(&phba->sli4_hba.els_cq);


 __lpfc_sli4_release_queue(&phba->sli4_hba.nvmels_cq);


 __lpfc_sli4_release_queue(&phba->sli4_hba.mbx_cq);


 INIT_LIST_HEAD(&phba->sli4_hba.lpfc_wq_list);


 spin_lock_irq(&phba->hbalock);
 phba->sli.sli_flag &= ~LPFC_QUEUE_FREE_INIT;
 spin_unlock_irq(&phba->hbalock);
}
