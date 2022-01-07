
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fcf_flag; } ;
struct lpfc_hba {int hbalock; TYPE_1__ fcf; } ;


 int FCF_REGISTERED ;
 int KERN_ERR ;
 int LOG_DISCOVERY ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_sli4_unregister_fcf (struct lpfc_hba*) ;
 int lpfc_unregister_fcf_prep (struct lpfc_hba*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_unregister_fcf(struct lpfc_hba *phba)
{
 int rc;


 rc = lpfc_unregister_fcf_prep(phba);
 if (rc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_DISCOVERY,
    "2749 Failed to prepare for unregistering "
    "HBA's FCF record: rc=%d\n", rc);
  return;
 }


 rc = lpfc_sli4_unregister_fcf(phba);
 if (rc)
  return;

 spin_lock_irq(&phba->hbalock);
 phba->fcf.fcf_flag &= ~FCF_REGISTERED;
 spin_unlock_irq(&phba->hbalock);
}
