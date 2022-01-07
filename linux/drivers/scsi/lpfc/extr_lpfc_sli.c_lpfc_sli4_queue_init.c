
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_sli_ring {int ring_lock; int iocb_continueq; int txcmplq; int txq; scalar_t__ txcmplq_cnt; void* ringno; scalar_t__ flag; } ;
struct lpfc_sli {int mboxq_cmpl; int mboxq; } ;
struct TYPE_10__ {TYPE_4__* nvmels_wq; TYPE_3__* els_wq; TYPE_2__* hdwq; } ;
struct lpfc_hba {int cfg_hdw_queue; int cfg_enable_fc4_type; int hbalock; TYPE_5__ sli4_hba; struct lpfc_sli sli; } ;
struct TYPE_9__ {struct lpfc_sli_ring* pring; } ;
struct TYPE_8__ {struct lpfc_sli_ring* pring; } ;
struct TYPE_7__ {TYPE_1__* io_wq; } ;
struct TYPE_6__ {struct lpfc_sli_ring* pring; } ;


 int INIT_LIST_HEAD (int *) ;
 void* LPFC_ELS_RING ;
 int LPFC_ENABLE_NVME ;
 void* LPFC_FCP_RING ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_sli4_queue_init(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli;
 struct lpfc_sli_ring *pring;
 int i;

 psli = &phba->sli;
 spin_lock_irq(&phba->hbalock);
 INIT_LIST_HEAD(&psli->mboxq);
 INIT_LIST_HEAD(&psli->mboxq_cmpl);

 for (i = 0; i < phba->cfg_hdw_queue; i++) {
  pring = phba->sli4_hba.hdwq[i].io_wq->pring;
  pring->flag = 0;
  pring->ringno = LPFC_FCP_RING;
  pring->txcmplq_cnt = 0;
  INIT_LIST_HEAD(&pring->txq);
  INIT_LIST_HEAD(&pring->txcmplq);
  INIT_LIST_HEAD(&pring->iocb_continueq);
  spin_lock_init(&pring->ring_lock);
 }
 pring = phba->sli4_hba.els_wq->pring;
 pring->flag = 0;
 pring->ringno = LPFC_ELS_RING;
 pring->txcmplq_cnt = 0;
 INIT_LIST_HEAD(&pring->txq);
 INIT_LIST_HEAD(&pring->txcmplq);
 INIT_LIST_HEAD(&pring->iocb_continueq);
 spin_lock_init(&pring->ring_lock);

 if (phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) {
  pring = phba->sli4_hba.nvmels_wq->pring;
  pring->flag = 0;
  pring->ringno = LPFC_ELS_RING;
  pring->txcmplq_cnt = 0;
  INIT_LIST_HEAD(&pring->txq);
  INIT_LIST_HEAD(&pring->txcmplq);
  INIT_LIST_HEAD(&pring->iocb_continueq);
  spin_lock_init(&pring->ring_lock);
 }

 spin_unlock_irq(&phba->hbalock);
}
