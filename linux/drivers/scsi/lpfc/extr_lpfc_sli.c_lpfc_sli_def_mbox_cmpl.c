
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint16_t ;
struct lpfc_vport {int fc_flag; int vpi_state; } ;
struct lpfc_nodelist {int nlp_flag; scalar_t__ nlp_defer_did; int nlp_DID; int nlp_rpi; } ;
struct lpfc_hba {int mbox_mem_pool; TYPE_3__* pport; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_12__ {int vpi; } ;
struct TYPE_13__ {TYPE_1__ varRegLogin; int * varWords; } ;
struct TYPE_15__ {scalar_t__ mbxCommand; scalar_t__ mbxStatus; TYPE_2__ un; } ;
struct TYPE_16__ {int mqe; TYPE_4__ mb; } ;
struct TYPE_17__ {void (* mbox_cmpl ) (struct lpfc_hba*,TYPE_6__*) ;TYPE_5__ u; int * ctx_ndlp; int * ctx_buf; struct lpfc_vport* vport; } ;
struct TYPE_14__ {int load_flag; } ;
typedef TYPE_6__ LPFC_MBOXQ_t ;


 int FC_UNLOADING ;
 int FC_VPORT_NEEDS_REG_VPI ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LOG_MBOX ;
 int LOG_SLI ;
 int LPFC_VPI_REGISTERED ;
 scalar_t__ MBXERR_SEC_NO_PERMISSION ;
 scalar_t__ MBX_INIT_LINK ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 scalar_t__ MBX_REG_LOGIN64 ;
 scalar_t__ MBX_REG_VPI ;
 scalar_t__ MBX_SLI4_CONFIG ;
 scalar_t__ MBX_UNREG_LOGIN ;
 scalar_t__ NLP_EVT_NOTHING_PENDING ;
 int NLP_UNREG_INP ;
 int __lpfc_sli_rpi_release (struct lpfc_vport*,struct lpfc_nodelist*) ;
 scalar_t__ bf_get (int ,int *) ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_issue_els_plogi (struct lpfc_vport*,int ,int ) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_mqe_command ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int,char*,int ,int ,int,scalar_t__,struct lpfc_nodelist*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli4_mbox_cmd_free (struct lpfc_hba*,TYPE_6__*) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_6__*,int ) ;
 int lpfc_unreg_login (struct lpfc_hba*,int ,int ,TYPE_6__*) ;
 int mempool_free (TYPE_6__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_sli_def_mbox_cmpl(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 struct lpfc_vport *vport = pmb->vport;
 struct lpfc_dmabuf *mp;
 struct lpfc_nodelist *ndlp;
 struct Scsi_Host *shost;
 uint16_t rpi, vpi;
 int rc;

 mp = (struct lpfc_dmabuf *)(pmb->ctx_buf);

 if (mp) {
  lpfc_mbuf_free(phba, mp->virt, mp->phys);
  kfree(mp);
 }





 if (!(phba->pport->load_flag & FC_UNLOADING) &&
     pmb->u.mb.mbxCommand == MBX_REG_LOGIN64 &&
     !pmb->u.mb.mbxStatus) {
  rpi = pmb->u.mb.un.varWords[0];
  vpi = pmb->u.mb.un.varRegLogin.vpi;
  lpfc_unreg_login(phba, vpi, rpi, pmb);
  pmb->vport = vport;
  pmb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
  rc = lpfc_sli_issue_mbox(phba, pmb, MBX_NOWAIT);
  if (rc != MBX_NOT_FINISHED)
   return;
 }

 if ((pmb->u.mb.mbxCommand == MBX_REG_VPI) &&
  !(phba->pport->load_flag & FC_UNLOADING) &&
  !pmb->u.mb.mbxStatus) {
  shost = lpfc_shost_from_vport(vport);
  spin_lock_irq(shost->host_lock);
  vport->vpi_state |= LPFC_VPI_REGISTERED;
  vport->fc_flag &= ~FC_VPORT_NEEDS_REG_VPI;
  spin_unlock_irq(shost->host_lock);
 }

 if (pmb->u.mb.mbxCommand == MBX_REG_LOGIN64) {
  ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;
  lpfc_nlp_put(ndlp);
  pmb->ctx_buf = ((void*)0);
  pmb->ctx_ndlp = ((void*)0);
 }

 if (pmb->u.mb.mbxCommand == MBX_UNREG_LOGIN) {
  ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;


  if (ndlp) {
   lpfc_printf_vlog(
    vport,
    KERN_INFO, LOG_MBOX | LOG_DISCOVERY,
    "1438 UNREG cmpl deferred mbox x%x "
    "on NPort x%x Data: x%x x%x %px\n",
    ndlp->nlp_rpi, ndlp->nlp_DID,
    ndlp->nlp_flag, ndlp->nlp_defer_did, ndlp);

   if ((ndlp->nlp_flag & NLP_UNREG_INP) &&
       (ndlp->nlp_defer_did != NLP_EVT_NOTHING_PENDING)) {
    ndlp->nlp_flag &= ~NLP_UNREG_INP;
    ndlp->nlp_defer_did = NLP_EVT_NOTHING_PENDING;
    lpfc_issue_els_plogi(vport, ndlp->nlp_DID, 0);
   } else {
    __lpfc_sli_rpi_release(vport, ndlp);
   }
   pmb->ctx_ndlp = ((void*)0);
  }
 }


 if ((pmb->u.mb.mbxCommand == MBX_INIT_LINK) &&
     (pmb->u.mb.mbxStatus == MBXERR_SEC_NO_PERMISSION))
  lpfc_printf_log(phba, KERN_ERR, LOG_MBOX | LOG_SLI,
    "2860 SLI authentication is required "
    "for INIT_LINK but has not done yet\n");

 if (bf_get(lpfc_mqe_command, &pmb->u.mqe) == MBX_SLI4_CONFIG)
  lpfc_sli4_mbox_cmd_free(phba, pmb);
 else
  mempool_free(pmb, phba->mbox_mem_pool);
}
