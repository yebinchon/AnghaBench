
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int vpi; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_mqe {int dummy; } ;
typedef struct lpfc_mqe lpfc_mcqe ;
struct TYPE_16__ {int mbx_wq; } ;
struct TYPE_15__ {TYPE_7__* mbox_active; int sli_flag; int mbox_tmo; } ;
struct lpfc_hba {TYPE_5__ sli4_hba; int hbalock; TYPE_4__ sli; int work_ha; TYPE_3__* pport; int last_completion_time; TYPE_6__* mbox; } ;
struct lpfc_dmabuf {int dummy; } ;
struct TYPE_12__ {struct lpfc_mqe mqe; } ;
struct TYPE_18__ {int mbox_flag; struct lpfc_vport* vport; struct lpfc_nodelist* ctx_ndlp; struct lpfc_dmabuf* ctx_buf; scalar_t__ mbox_cmpl; TYPE_1__ u; } ;
struct TYPE_13__ {int * varWords; } ;
struct TYPE_17__ {TYPE_2__ un; } ;
struct TYPE_14__ {int work_port_lock; int work_port_events; } ;
typedef TYPE_6__ MAILBOX_t ;
typedef TYPE_7__ LPFC_MBOXQ_t ;


 int HA_MBATT ;
 int KERN_ERR ;
 int LOG_MBOX ;
 int LOG_SLI ;
 int LPFC_DISC_TRC_MBOX_VPORT ;
 int LPFC_MBX_ERROR_RANGE ;
 int LPFC_MBX_IMED_UNREG ;
 int LPFC_SLI_MBOX_ACTIVE ;
 int MBX_BUSY ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 scalar_t__ MBX_SUCCESS ;
 int MB_CQE_STATUS_SUCCESS ;
 int WORKER_MBOX_TMO ;
 int __lpfc_mbox_cmpl_put (struct lpfc_hba*,TYPE_7__*) ;
 scalar_t__ bf_get (int ,struct lpfc_mqe*) ;
 int bf_set (int ,struct lpfc_mqe*,int) ;
 int del_timer (int *) ;
 int jiffies ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int,int ,int ) ;
 scalar_t__ lpfc_mbx_cmpl_dflt_rpi ;
 int lpfc_mcqe_status ;
 int lpfc_mqe_status ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*) ;
 int lpfc_sli4_mq_release (int ) ;
 int lpfc_sli4_pcimem_bcopy (TYPE_6__*,struct lpfc_mqe*,int) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_7__*,int ) ;
 int lpfc_trailer_completed ;
 int lpfc_trailer_consumed ;
 int lpfc_unreg_login (struct lpfc_hba*,int ,int ,TYPE_7__*) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
lpfc_sli4_sp_handle_mbox_event(struct lpfc_hba *phba, struct lpfc_mcqe *mcqe)
{
 uint32_t mcqe_status;
 MAILBOX_t *mbox, *pmbox;
 struct lpfc_mqe *mqe;
 struct lpfc_vport *vport;
 struct lpfc_nodelist *ndlp;
 struct lpfc_dmabuf *mp;
 unsigned long iflags;
 LPFC_MBOXQ_t *pmb;
 bool workposted = 0;
 int rc;


 if (!bf_get(lpfc_trailer_completed, mcqe))
  goto out_no_mqe_complete;


 spin_lock_irqsave(&phba->hbalock, iflags);
 pmb = phba->sli.mbox_active;
 if (unlikely(!pmb)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX,
    "1832 No pending MBOX command to handle\n");
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  goto out_no_mqe_complete;
 }
 spin_unlock_irqrestore(&phba->hbalock, iflags);
 mqe = &pmb->u.mqe;
 pmbox = (MAILBOX_t *)&pmb->u.mqe;
 mbox = phba->mbox;
 vport = pmb->vport;


 phba->last_completion_time = jiffies;
 del_timer(&phba->sli.mbox_tmo);


 if (pmb->mbox_cmpl && mbox)
  lpfc_sli4_pcimem_bcopy(mbox, mqe, sizeof(struct lpfc_mqe));





 mcqe_status = bf_get(lpfc_mcqe_status, mcqe);
 if (mcqe_status != MB_CQE_STATUS_SUCCESS) {
  if (bf_get(lpfc_mqe_status, mqe) == MBX_SUCCESS)
   bf_set(lpfc_mqe_status, mqe,
          (LPFC_MBX_ERROR_RANGE | mcqe_status));
 }
 if (pmb->mbox_flag & LPFC_MBX_IMED_UNREG) {
  pmb->mbox_flag &= ~LPFC_MBX_IMED_UNREG;
  lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_MBOX_VPORT,
          "MBOX dflt rpi: status:x%x rpi:x%x",
          mcqe_status,
          pmbox->un.varWords[0], 0);
  if (mcqe_status == MB_CQE_STATUS_SUCCESS) {
   mp = (struct lpfc_dmabuf *)(pmb->ctx_buf);
   ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;



   lpfc_unreg_login(phba, vport->vpi,
      pmbox->un.varWords[0], pmb);
   pmb->mbox_cmpl = lpfc_mbx_cmpl_dflt_rpi;
   pmb->ctx_buf = mp;
   pmb->ctx_ndlp = ndlp;
   pmb->vport = vport;
   rc = lpfc_sli_issue_mbox(phba, pmb, MBX_NOWAIT);
   if (rc != MBX_BUSY)
    lpfc_printf_log(phba, KERN_ERR, LOG_MBOX |
      LOG_SLI, "0385 rc should "
      "have been MBX_BUSY\n");
   if (rc != MBX_NOT_FINISHED)
    goto send_current_mbox;
  }
 }
 spin_lock_irqsave(&phba->pport->work_port_lock, iflags);
 phba->pport->work_port_events &= ~WORKER_MBOX_TMO;
 spin_unlock_irqrestore(&phba->pport->work_port_lock, iflags);


 spin_lock_irqsave(&phba->hbalock, iflags);
 __lpfc_mbox_cmpl_put(phba, pmb);
 phba->work_ha |= HA_MBATT;
 spin_unlock_irqrestore(&phba->hbalock, iflags);
 workposted = 1;

send_current_mbox:
 spin_lock_irqsave(&phba->hbalock, iflags);

 phba->sli.sli_flag &= ~LPFC_SLI_MBOX_ACTIVE;

 phba->sli.mbox_active = ((void*)0);
 spin_unlock_irqrestore(&phba->hbalock, iflags);

 lpfc_worker_wake_up(phba);
out_no_mqe_complete:
 if (bf_get(lpfc_trailer_consumed, mcqe))
  lpfc_sli4_mq_release(phba->sli4_hba.mbx_wq);
 return workposted;
}
