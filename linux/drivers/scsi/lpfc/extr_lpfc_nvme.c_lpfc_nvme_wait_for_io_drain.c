
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct lpfc_sli_ring {int txcmplq; } ;
struct TYPE_6__ {TYPE_2__* hdwq; } ;
struct lpfc_hba {scalar_t__ sli_rev; size_t cfg_hdw_queue; TYPE_3__ sli4_hba; } ;
struct TYPE_5__ {TYPE_1__* io_wq; } ;
struct TYPE_4__ {struct lpfc_sli_ring* pring; } ;


 int KERN_ERR ;
 int LOG_NVME_IOERR ;
 scalar_t__ LPFC_SLI_REV4 ;
 int LPFC_XRI_EXCH_BUSY_WAIT_T1 ;
 int list_empty (int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,size_t) ;
 int msleep (int ) ;

void
lpfc_nvme_wait_for_io_drain(struct lpfc_hba *phba)
{
 struct lpfc_sli_ring *pring;
 u32 i, wait_cnt = 0;

 if (phba->sli_rev < LPFC_SLI_REV4 || !phba->sli4_hba.hdwq)
  return;




 for (i = 0; i < phba->cfg_hdw_queue; i++) {
  if (!phba->sli4_hba.hdwq[i].io_wq)
   continue;
  pring = phba->sli4_hba.hdwq[i].io_wq->pring;

  if (!pring)
   continue;


  while (!list_empty(&pring->txcmplq)) {
   msleep(LPFC_XRI_EXCH_BUSY_WAIT_T1);
   wait_cnt++;




   if ((wait_cnt % 1000) == 0) {
    lpfc_printf_log(phba, KERN_ERR, LOG_NVME_IOERR,
      "6178 NVME IO not empty, "
      "cnt %d\n", wait_cnt);
   }
  }
 }
}
