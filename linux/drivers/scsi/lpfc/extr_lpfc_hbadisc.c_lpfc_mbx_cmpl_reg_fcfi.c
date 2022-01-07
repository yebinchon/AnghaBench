
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct lpfc_vport {scalar_t__ port_state; } ;
struct TYPE_13__ {int fcf_flag; int fcfi; } ;
struct lpfc_hba {int hba_flag; int mbox_mem_pool; int hbalock; TYPE_5__ fcf; } ;
struct TYPE_10__ {int reg_fcfi; } ;
struct TYPE_11__ {TYPE_2__ un; } ;
struct TYPE_9__ {scalar_t__ mbxStatus; } ;
struct TYPE_12__ {TYPE_3__ mqe; TYPE_1__ mb; } ;
struct TYPE_14__ {TYPE_4__ u; struct lpfc_vport* vport; } ;
typedef TYPE_6__ LPFC_MBOXQ_t ;


 int FCF_IN_USE ;
 int FCF_REGISTERED ;
 int FCF_RR_INPROG ;
 int FCF_SCAN_DONE ;
 int FCF_TS_INPROG ;
 int KERN_ERR ;
 int LOG_MBOX ;
 scalar_t__ LPFC_FLOGI ;
 int LPFC_UNREG_FCF ;
 int bf_get (int ,int *) ;
 scalar_t__ lpfc_check_pending_fcoe_event (struct lpfc_hba*,int ) ;
 int lpfc_issue_init_vfi (struct lpfc_vport*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,scalar_t__) ;
 int lpfc_reg_fcfi_fcfi ;
 int mempool_free (TYPE_6__*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_mbx_cmpl_reg_fcfi(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
 struct lpfc_vport *vport = mboxq->vport;

 if (mboxq->u.mb.mbxStatus) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_MBOX,
    "2017 REG_FCFI mbxStatus error x%x "
    "HBA state x%x\n",
    mboxq->u.mb.mbxStatus, vport->port_state);
  goto fail_out;
 }


 phba->fcf.fcfi = bf_get(lpfc_reg_fcfi_fcfi, &mboxq->u.mqe.un.reg_fcfi);

 spin_lock_irq(&phba->hbalock);
 phba->fcf.fcf_flag |= FCF_REGISTERED;
 spin_unlock_irq(&phba->hbalock);


 if ((!(phba->hba_flag & FCF_RR_INPROG)) &&
  lpfc_check_pending_fcoe_event(phba, LPFC_UNREG_FCF))
  goto fail_out;


 spin_lock_irq(&phba->hbalock);
 phba->fcf.fcf_flag |= (FCF_SCAN_DONE | FCF_IN_USE);
 phba->hba_flag &= ~FCF_TS_INPROG;
 if (vport->port_state != LPFC_FLOGI) {
  phba->hba_flag |= FCF_RR_INPROG;
  spin_unlock_irq(&phba->hbalock);
  lpfc_issue_init_vfi(vport);
  goto out;
 }
 spin_unlock_irq(&phba->hbalock);
 goto out;

fail_out:
 spin_lock_irq(&phba->hbalock);
 phba->hba_flag &= ~FCF_RR_INPROG;
 spin_unlock_irq(&phba->hbalock);
out:
 mempool_free(mboxq, phba->mbox_mem_pool);
}
