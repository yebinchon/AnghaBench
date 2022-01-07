
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct lpfc_vport {int fc_flag; } ;
struct lpfc_nodelist {int nlp_flag; scalar_t__ nlp_state; int nlp_rpi; int nlp_prev_state; int nlp_DID; struct lpfc_vport* vport; } ;
struct TYPE_10__ {int remoteID; } ;
struct TYPE_11__ {int * ulpWord; TYPE_2__ elsreq64; } ;
struct TYPE_13__ {scalar_t__ ulpStatus; int ulpTimeout; TYPE_3__ un; int ulpIoTag; } ;
struct TYPE_9__ {TYPE_4__* mbox; } ;
struct lpfc_iocbq {int * context1; TYPE_5__ iocb; scalar_t__ context2; TYPE_1__ context_un; } ;
struct lpfc_hba {int mbox_mem_pool; } ;
struct lpfc_dmabuf {int phys; scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_12__ {struct lpfc_dmabuf* ctx_buf; int mbox_cmpl; int mbox_flag; struct lpfc_vport* vport; int ctx_ndlp; } ;
typedef TYPE_4__ LPFC_MBOXQ_t ;
typedef TYPE_5__ IOCB_t ;


 scalar_t__ ELS_CMD_LS_RJT ;
 int FC_PT2PT ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_RSP ;
 int LPFC_MBX_IMED_UNREG ;
 scalar_t__ MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int NLP_ACC_REGLOGIN ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_REG_LOGIN_SEND ;
 int NLP_RM_DFLT_RPI ;
 scalar_t__ NLP_STE_PLOGI_ISSUE ;
 scalar_t__ NLP_STE_REG_LOGIN_ISSUE ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,scalar_t__,int ,int ) ;
 scalar_t__ lpfc_els_chk_latt (struct lpfc_vport*) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_error_lost_link (TYPE_5__*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,scalar_t__,int ) ;
 int lpfc_mbx_cmpl_dflt_rpi ;
 int lpfc_mbx_cmpl_reg_login ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 scalar_t__ lpfc_nlp_not_used (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,scalar_t__) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int,int,int,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 scalar_t__ lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_4__*,int ) ;
 int lpfc_unreg_rpi (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int mempool_free (TYPE_4__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_cmpl_els_rsp(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
    struct lpfc_iocbq *rspiocb)
{
 struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) cmdiocb->context1;
 struct lpfc_vport *vport = ndlp ? ndlp->vport : ((void*)0);
 struct Scsi_Host *shost = vport ? lpfc_shost_from_vport(vport) : ((void*)0);
 IOCB_t *irsp;
 uint8_t *pcmd;
 LPFC_MBOXQ_t *mbox = ((void*)0);
 struct lpfc_dmabuf *mp = ((void*)0);
 uint32_t ls_rjt = 0;

 irsp = &rspiocb->iocb;

 if (cmdiocb->context_un.mbox)
  mbox = cmdiocb->context_un.mbox;




 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) cmdiocb->context2)->virt);
 if (ndlp && NLP_CHK_NODE_ACT(ndlp) &&
     (*((uint32_t *) (pcmd)) == ELS_CMD_LS_RJT)) {



  if (!(ndlp->nlp_flag & NLP_RM_DFLT_RPI))
   ls_rjt = 1;
 }


 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp) || lpfc_els_chk_latt(vport)) {
  if (mbox) {
   mp = (struct lpfc_dmabuf *)mbox->ctx_buf;
   if (mp) {
    lpfc_mbuf_free(phba, mp->virt, mp->phys);
    kfree(mp);
   }
   mempool_free(mbox, phba->mbox_mem_pool);
  }
  if (ndlp && NLP_CHK_NODE_ACT(ndlp) &&
      (ndlp->nlp_flag & NLP_RM_DFLT_RPI))
   if (lpfc_nlp_not_used(ndlp)) {
    ndlp = ((void*)0);




    cmdiocb->context1 = ((void*)0);
   }
  goto out;
 }

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_RSP,
  "ELS rsp cmpl:    status:x%x/x%x did:x%x",
  irsp->ulpStatus, irsp->un.ulpWord[4],
  cmdiocb->iocb.un.elsreq64.remoteID);

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0110 ELS response tag x%x completes "
    "Data: x%x x%x x%x x%x x%x x%x x%x\n",
    cmdiocb->iocb.ulpIoTag, rspiocb->iocb.ulpStatus,
    rspiocb->iocb.un.ulpWord[4], rspiocb->iocb.ulpTimeout,
    ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
    ndlp->nlp_rpi);
 if (mbox) {
  if ((rspiocb->iocb.ulpStatus == 0)
      && (ndlp->nlp_flag & NLP_ACC_REGLOGIN)) {
   if (!lpfc_unreg_rpi(vport, ndlp) &&
       (!(vport->fc_flag & FC_PT2PT)) &&
       (ndlp->nlp_state == NLP_STE_PLOGI_ISSUE ||
        ndlp->nlp_state == NLP_STE_REG_LOGIN_ISSUE)) {
    lpfc_printf_vlog(vport, KERN_INFO,
     LOG_DISCOVERY,
     "0314 PLOGI recov DID x%x "
     "Data: x%x x%x x%x\n",
     ndlp->nlp_DID, ndlp->nlp_state,
     ndlp->nlp_rpi, ndlp->nlp_flag);
    mp = mbox->ctx_buf;
    if (mp) {
     lpfc_mbuf_free(phba, mp->virt,
             mp->phys);
     kfree(mp);
    }
    mempool_free(mbox, phba->mbox_mem_pool);
    goto out;
   }




   mbox->ctx_ndlp = lpfc_nlp_get(ndlp);
   mbox->vport = vport;
   if (ndlp->nlp_flag & NLP_RM_DFLT_RPI) {
    mbox->mbox_flag |= LPFC_MBX_IMED_UNREG;
    mbox->mbox_cmpl = lpfc_mbx_cmpl_dflt_rpi;
   }
   else {
    mbox->mbox_cmpl = lpfc_mbx_cmpl_reg_login;
    ndlp->nlp_prev_state = ndlp->nlp_state;
    lpfc_nlp_set_state(vport, ndlp,
        NLP_STE_REG_LOGIN_ISSUE);
   }

   ndlp->nlp_flag |= NLP_REG_LOGIN_SEND;
   if (lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT)
       != MBX_NOT_FINISHED)
    goto out;




   lpfc_nlp_put(ndlp);
   ndlp->nlp_flag &= ~NLP_REG_LOGIN_SEND;


   lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
    "0138 ELS rsp: Cannot issue reg_login for x%x "
    "Data: x%x x%x x%x\n",
    ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
    ndlp->nlp_rpi);

   if (lpfc_nlp_not_used(ndlp)) {
    ndlp = ((void*)0);




    cmdiocb->context1 = ((void*)0);
   }
  } else {

   if (!lpfc_error_lost_link(irsp) &&
       ndlp->nlp_flag & NLP_ACC_REGLOGIN) {
    if (lpfc_nlp_not_used(ndlp)) {
     ndlp = ((void*)0);





     cmdiocb->context1 = ((void*)0);
    }
   }
  }
  mp = (struct lpfc_dmabuf *)mbox->ctx_buf;
  if (mp) {
   lpfc_mbuf_free(phba, mp->virt, mp->phys);
   kfree(mp);
  }
  mempool_free(mbox, phba->mbox_mem_pool);
 }
out:
 if (ndlp && NLP_CHK_NODE_ACT(ndlp)) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag &= ~(NLP_ACC_REGLOGIN | NLP_RM_DFLT_RPI);
  spin_unlock_irq(shost->host_lock);






  if (ls_rjt)
   if (lpfc_nlp_not_used(ndlp))




    cmdiocb->context1 = ((void*)0);

 }

 lpfc_els_free_iocb(phba, cmdiocb);
 return;
}
