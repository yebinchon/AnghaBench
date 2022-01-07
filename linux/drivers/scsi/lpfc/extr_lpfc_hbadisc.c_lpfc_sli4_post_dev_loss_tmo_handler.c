
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int fcf_flag; } ;
struct lpfc_hba {int hba_flag; int hbalock; TYPE_1__ fcf; } ;


 int FCF_DISCOVERY ;
 int FCF_REDISC_PROG ;
 int FCF_RR_INPROG ;
 int FCF_TS_INPROG ;
 int HBA_DEVLOSS_TMO ;
 int HBA_FIP_SUPPORT ;
 int KERN_INFO ;
 int LOG_FIP ;
 int lpfc_fcf_inuse (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_unregister_fcf_rescan (struct lpfc_hba*) ;
 int lpfc_unregister_unused_fcf (struct lpfc_hba*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_sli4_post_dev_loss_tmo_handler(struct lpfc_hba *phba, int fcf_inuse,
        uint32_t nlp_did)
{



 if (!fcf_inuse)
  return;

 if ((phba->hba_flag & HBA_FIP_SUPPORT) && !lpfc_fcf_inuse(phba)) {
  spin_lock_irq(&phba->hbalock);
  if (phba->fcf.fcf_flag & FCF_DISCOVERY) {
   if (phba->hba_flag & HBA_DEVLOSS_TMO) {
    spin_unlock_irq(&phba->hbalock);
    return;
   }
   phba->hba_flag |= HBA_DEVLOSS_TMO;
   lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
     "2847 Last remote node (x%x) using "
     "FCF devloss tmo\n", nlp_did);
  }
  if (phba->fcf.fcf_flag & FCF_REDISC_PROG) {
   spin_unlock_irq(&phba->hbalock);
   lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
     "2868 Devloss tmo to FCF rediscovery "
     "in progress\n");
   return;
  }
  if (!(phba->hba_flag & (FCF_TS_INPROG | FCF_RR_INPROG))) {
   spin_unlock_irq(&phba->hbalock);
   lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
     "2869 Devloss tmo to idle FIP engine, "
     "unreg in-use FCF and rescan.\n");

   lpfc_unregister_fcf_rescan(phba);
   return;
  }
  spin_unlock_irq(&phba->hbalock);
  if (phba->hba_flag & FCF_TS_INPROG)
   lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
     "2870 FCF table scan in progress\n");
  if (phba->hba_flag & FCF_RR_INPROG)
   lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
     "2871 FLOGI roundrobin FCF failover "
     "in progress\n");
 }
 lpfc_unregister_unused_fcf(phba);
}
