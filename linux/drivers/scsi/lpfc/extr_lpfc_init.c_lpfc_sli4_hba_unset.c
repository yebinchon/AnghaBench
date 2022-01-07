
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_13__ {scalar_t__ ras_enabled; } ;
struct TYPE_12__ {int sli_flag; TYPE_7__* mbox_active; } ;
struct TYPE_9__ {scalar_t__ intr_enable; } ;
struct lpfc_hba {TYPE_6__* pport; TYPE_5__ ras_fwlog; int worker_thread; scalar_t__ cfg_sriov_nr_virtfn; int hbalock; TYPE_4__ sli; TYPE_1__ sli4_hba; struct pci_dev* pcidev; } ;
struct TYPE_10__ {int mbxStatus; } ;
struct TYPE_11__ {TYPE_2__ mb; } ;
struct TYPE_15__ {TYPE_3__ u; } ;
struct TYPE_14__ {scalar_t__ work_port_events; } ;
typedef TYPE_7__ LPFC_MBOXQ_t ;


 int LPFC_ACTIVE_MBOX_WAIT_CNT ;
 int LPFC_SLI_ASYNC_MBX_BLK ;
 int LPFC_SLI_MBOX_ACTIVE ;
 int MBX_NOT_FINISHED ;
 int __lpfc_mbox_cmpl_put (struct lpfc_hba*,TYPE_7__*) ;
 int kthread_stop (int ) ;
 int lpfc_pci_function_reset (struct lpfc_hba*) ;
 int lpfc_ras_stop_fwlog (struct lpfc_hba*) ;
 int lpfc_sli4_disable_intr (struct lpfc_hba*) ;
 int lpfc_sli4_queue_destroy (struct lpfc_hba*) ;
 int lpfc_sli4_queue_unset (struct lpfc_hba*) ;
 int lpfc_sli4_ras_dma_free (struct lpfc_hba*) ;
 int lpfc_sli4_xri_exchange_busy_wait (struct lpfc_hba*) ;
 int lpfc_sli_hba_iocb_abort (struct lpfc_hba*) ;
 int lpfc_stop_hba_timers (struct lpfc_hba*) ;
 int msleep (int) ;
 int pci_disable_sriov (struct pci_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_sli4_hba_unset(struct lpfc_hba *phba)
{
 int wait_cnt = 0;
 LPFC_MBOXQ_t *mboxq;
 struct pci_dev *pdev = phba->pcidev;

 lpfc_stop_hba_timers(phba);
 if (phba->pport)
  phba->sli4_hba.intr_enable = 0;







 spin_lock_irq(&phba->hbalock);
 phba->sli.sli_flag |= LPFC_SLI_ASYNC_MBX_BLK;
 spin_unlock_irq(&phba->hbalock);

 while (phba->sli.sli_flag & LPFC_SLI_MBOX_ACTIVE) {
  msleep(10);
  if (++wait_cnt > LPFC_ACTIVE_MBOX_WAIT_CNT)
   break;
 }

 if (phba->sli.sli_flag & LPFC_SLI_MBOX_ACTIVE) {
  spin_lock_irq(&phba->hbalock);
  mboxq = phba->sli.mbox_active;
  mboxq->u.mb.mbxStatus = MBX_NOT_FINISHED;
  __lpfc_mbox_cmpl_put(phba, mboxq);
  phba->sli.sli_flag &= ~LPFC_SLI_MBOX_ACTIVE;
  phba->sli.mbox_active = ((void*)0);
  spin_unlock_irq(&phba->hbalock);
 }


 lpfc_sli_hba_iocb_abort(phba);


 lpfc_sli4_xri_exchange_busy_wait(phba);


 lpfc_sli4_disable_intr(phba);


 if (phba->cfg_sriov_nr_virtfn)
  pci_disable_sriov(pdev);


 kthread_stop(phba->worker_thread);


 lpfc_ras_stop_fwlog(phba);




 lpfc_sli4_queue_unset(phba);
 lpfc_sli4_queue_destroy(phba);


 lpfc_pci_function_reset(phba);


 if (phba->ras_fwlog.ras_enabled)
  lpfc_sli4_ras_dma_free(phba);


 if (phba->pport)
  phba->pport->work_port_events = 0;
}
