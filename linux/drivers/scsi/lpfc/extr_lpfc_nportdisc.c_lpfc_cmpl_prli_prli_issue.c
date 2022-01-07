
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {scalar_t__ port_type; scalar_t__ cfg_restrict_login; struct lpfc_hba* phba; } ;
struct lpfc_nvme_prli {int word5; int word4; int word1; } ;
struct lpfc_nodelist {int nlp_type; int nvme_fb_size; scalar_t__ fc4_prli_sent; int nlp_state; scalar_t__ nlp_DID; void* nlp_prev_state; int nlp_flag; int nlp_fcp_info; int nlp_nvme_info; int nlp_fc4_type; } ;
struct TYPE_6__ {scalar_t__ ulpStatus; } ;
struct TYPE_4__ {struct lpfc_iocbq* rsp_iocb; } ;
struct lpfc_iocbq {int iocb_flag; TYPE_3__ iocb; TYPE_1__ context_un; } ;
struct lpfc_hba {int nvmet_support; scalar_t__ cfg_nvme_enable_fb; scalar_t__ nsler; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_5__ {scalar_t__ acceptRspCode; scalar_t__ prliType; scalar_t__ targetFunc; scalar_t__ Retry; scalar_t__ writeXferRdyDis; scalar_t__ initiatorFunc; } ;
typedef TYPE_2__ PRLI ;
typedef TYPE_3__ IOCB_t ;


 int KERN_INFO ;
 int LOG_ELS ;
 int LOG_NVME_DISC ;
 scalar_t__ LPFC_NPIV_PORT ;
 int LPFC_NVME_FB_SHIFT ;
 int LPFC_NVME_MAX_FB ;
 int LPFC_PRLI_FCP_REQ ;
 int LPFC_PRLI_NVME_REQ ;
 int NLP_FC4_FCP ;
 int NLP_FC4_NVME ;
 int NLP_FCP_2_DEVICE ;
 int NLP_FCP_INITIATOR ;
 int NLP_FCP_TARGET ;
 int NLP_FIRSTBURST ;
 int NLP_NVME_DISCOVERY ;
 int NLP_NVME_INITIATOR ;
 int NLP_NVME_NSLER ;
 int NLP_NVME_TARGET ;
 int NLP_STE_MAPPED_NODE ;
 int NLP_STE_NPR_NODE ;
 void* NLP_STE_PRLI_ISSUE ;
 int NLP_STE_UNMAPPED_NODE ;
 int NLP_TARGET_REMOVE ;
 scalar_t__ PRLI_FCP_TYPE ;
 int PRLI_NVME_TYPE ;
 scalar_t__ PRLI_REQ_EXECUTED ;
 int be32_to_cpu (int ) ;
 int bf_get_be32 (int ,struct lpfc_nvme_prli*) ;
 void* lpfc_check_elscmpl_iocb (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 int lpfc_issue_els_logo (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,scalar_t__,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int prli_acc_rsp_code ;
 int prli_disc ;
 int prli_fb_sz ;
 int prli_fba ;
 int prli_init ;
 int prli_nsler ;
 int prli_tgt ;
 int prli_type_code ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_cmpl_prli_prli_issue(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
     void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_iocbq *cmdiocb, *rspiocb;
 struct lpfc_hba *phba = vport->phba;
 IOCB_t *irsp;
 PRLI *npr;
 struct lpfc_nvme_prli *nvpr;
 void *temp_ptr;

 cmdiocb = (struct lpfc_iocbq *) arg;
 rspiocb = cmdiocb->context_un.rsp_iocb;





 npr = ((void*)0);
 nvpr = ((void*)0);
 temp_ptr = lpfc_check_elscmpl_iocb(phba, cmdiocb, rspiocb);
 if (cmdiocb->iocb_flag & LPFC_PRLI_FCP_REQ)
  npr = (PRLI *) temp_ptr;
 else if (cmdiocb->iocb_flag & LPFC_PRLI_NVME_REQ)
  nvpr = (struct lpfc_nvme_prli *) temp_ptr;

 irsp = &rspiocb->iocb;
 if (irsp->ulpStatus) {
  if ((vport->port_type == LPFC_NPIV_PORT) &&
      vport->cfg_restrict_login) {
   goto out;
  }


  if (npr)
   ndlp->nlp_fc4_type &= ~NLP_FC4_FCP;
  if (nvpr)
   ndlp->nlp_fc4_type &= ~NLP_FC4_NVME;


  goto out_err;
 }

 if (npr && (npr->acceptRspCode == PRLI_REQ_EXECUTED) &&
     (npr->prliType == PRLI_FCP_TYPE)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_DISC,
     "6028 FCP NPR PRLI Cmpl Init %d Target %d\n",
     npr->initiatorFunc,
     npr->targetFunc);
  if (npr->initiatorFunc)
   ndlp->nlp_type |= NLP_FCP_INITIATOR;
  if (npr->targetFunc) {
   ndlp->nlp_type |= NLP_FCP_TARGET;
   if (npr->writeXferRdyDis)
    ndlp->nlp_flag |= NLP_FIRSTBURST;
  }
  if (npr->Retry)
   ndlp->nlp_fcp_info |= NLP_FCP_2_DEVICE;

 } else if (nvpr &&
     (bf_get_be32(prli_acc_rsp_code, nvpr) ==
      PRLI_REQ_EXECUTED) &&
     (bf_get_be32(prli_type_code, nvpr) ==
      PRLI_NVME_TYPE)) {


  if (bf_get_be32(prli_init, nvpr))
   ndlp->nlp_type |= NLP_NVME_INITIATOR;

  if (phba->nsler && bf_get_be32(prli_nsler, nvpr))
   ndlp->nlp_nvme_info |= NLP_NVME_NSLER;
  else
   ndlp->nlp_nvme_info &= ~NLP_NVME_NSLER;


  if (bf_get_be32(prli_tgt, nvpr)) {




   ndlp->nlp_type |= NLP_NVME_TARGET;
   if (bf_get_be32(prli_disc, nvpr))
    ndlp->nlp_type |= NLP_NVME_DISCOVERY;







   if ((bf_get_be32(prli_fba, nvpr) == 1) &&
       (phba->cfg_nvme_enable_fb) &&
       (!phba->nvmet_support)) {



    ndlp->nlp_flag |= NLP_FIRSTBURST;
    ndlp->nvme_fb_size = bf_get_be32(prli_fb_sz,
         nvpr);


    if (ndlp->nvme_fb_size)
     ndlp->nvme_fb_size <<=
      LPFC_NVME_FB_SHIFT;
    else
     ndlp->nvme_fb_size = LPFC_NVME_MAX_FB;
   }
  }

  lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_DISC,
     "6029 NVME PRLI Cmpl w1 x%08x "
     "w4 x%08x w5 x%08x flag x%x, "
     "fcp_info x%x nlp_type x%x\n",
     be32_to_cpu(nvpr->word1),
     be32_to_cpu(nvpr->word4),
     be32_to_cpu(nvpr->word5),
     ndlp->nlp_flag, ndlp->nlp_fcp_info,
     ndlp->nlp_type);
 }
 if (!(ndlp->nlp_type & NLP_FCP_TARGET) &&
     (vport->port_type == LPFC_NPIV_PORT) &&
      vport->cfg_restrict_login) {
out:
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_TARGET_REMOVE;
  spin_unlock_irq(shost->host_lock);
  lpfc_issue_els_logo(vport, ndlp, 0);

  ndlp->nlp_prev_state = NLP_STE_PRLI_ISSUE;
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
  return ndlp->nlp_state;
 }

out_err:



 if (ndlp->fc4_prli_sent == 0) {
  ndlp->nlp_prev_state = NLP_STE_PRLI_ISSUE;
  if (ndlp->nlp_type & (NLP_FCP_TARGET | NLP_NVME_TARGET))
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_MAPPED_NODE);
  else if (ndlp->nlp_type &
    (NLP_FCP_INITIATOR | NLP_NVME_INITIATOR))
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);
 } else
  lpfc_printf_vlog(vport,
     KERN_INFO, LOG_ELS,
     "3067 PRLI's still outstanding "
     "on x%06x - count %d, Pend Node Mode "
     "transition...\n",
     ndlp->nlp_DID, ndlp->fc4_prli_sent);

 return ndlp->nlp_state;
}
