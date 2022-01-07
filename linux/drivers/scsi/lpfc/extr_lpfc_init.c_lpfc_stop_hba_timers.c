
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mbox_tmo; } ;
struct lpfc_hba {scalar_t__ sli_rev; int pci_dev_grp; int fcp_poll_timer; scalar_t__ hb_outstanding; int hba_flag; int rrq_tmr; int hb_tmofunc; int eratt_poll; int fabric_block_timer; TYPE_1__ sli; int eq_delay_work; scalar_t__ pport; } ;


 int HBA_RRQ_ACTIVE ;
 int KERN_ERR ;
 int LOG_INIT ;


 scalar_t__ LPFC_SLI_REV4 ;
 int cancel_delayed_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_sli4_stop_fcf_redisc_wait_timer (struct lpfc_hba*) ;
 int lpfc_stop_vport_timers (scalar_t__) ;

void
lpfc_stop_hba_timers(struct lpfc_hba *phba)
{
 if (phba->pport)
  lpfc_stop_vport_timers(phba->pport);
 cancel_delayed_work_sync(&phba->eq_delay_work);
 del_timer_sync(&phba->sli.mbox_tmo);
 del_timer_sync(&phba->fabric_block_timer);
 del_timer_sync(&phba->eratt_poll);
 del_timer_sync(&phba->hb_tmofunc);
 if (phba->sli_rev == LPFC_SLI_REV4) {
  del_timer_sync(&phba->rrq_tmr);
  phba->hba_flag &= ~HBA_RRQ_ACTIVE;
 }
 phba->hb_outstanding = 0;

 switch (phba->pci_dev_grp) {
 case 129:

  del_timer_sync(&phba->fcp_poll_timer);
  break;
 case 128:

  lpfc_sli4_stop_fcf_redisc_wait_timer(phba);
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0297 Invalid device group (x%x)\n",
    phba->pci_dev_grp);
  break;
 }
 return;
}
