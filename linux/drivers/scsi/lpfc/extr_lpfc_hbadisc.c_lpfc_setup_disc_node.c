
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int fc_flag; TYPE_1__* phba; } ;
struct lpfc_nodelist {int nlp_flag; scalar_t__ nlp_state; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_2__ {scalar_t__ nvmet_support; } ;


 int FC_NDISC_ACTIVE ;
 int FC_RSCN_MODE ;
 int KERN_WARNING ;
 int LOG_SLI ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_NPR_2B_DISC ;
 int NLP_RCV_PLOGI ;
 scalar_t__ NLP_STE_ADISC_ISSUE ;
 int NLP_STE_NPR_NODE ;
 scalar_t__ NLP_STE_PLOGI_ISSUE ;
 int lpfc_cancel_retry_delay_tmo (struct lpfc_vport*,struct lpfc_nodelist*) ;
 struct lpfc_nodelist* lpfc_enable_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 struct lpfc_nodelist* lpfc_nlp_init (struct lpfc_vport*,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 scalar_t__ lpfc_rscn_payload_check (struct lpfc_vport*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

struct lpfc_nodelist *
lpfc_setup_disc_node(struct lpfc_vport *vport, uint32_t did)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_nodelist *ndlp;

 ndlp = lpfc_findnode_did(vport, did);
 if (!ndlp) {
  if (vport->phba->nvmet_support)
   return ((void*)0);
  if ((vport->fc_flag & FC_RSCN_MODE) != 0 &&
      lpfc_rscn_payload_check(vport, did) == 0)
   return ((void*)0);
  ndlp = lpfc_nlp_init(vport, did);
  if (!ndlp)
   return ((void*)0);
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_NPR_2B_DISC;
  spin_unlock_irq(shost->host_lock);
  return ndlp;
 } else if (!NLP_CHK_NODE_ACT(ndlp)) {
  if (vport->phba->nvmet_support)
   return ((void*)0);
  ndlp = lpfc_enable_node(vport, ndlp, NLP_STE_NPR_NODE);
  if (!ndlp) {
   lpfc_printf_vlog(vport, KERN_WARNING, LOG_SLI,
      "0014 Could not enable ndlp\n");
   return ((void*)0);
  }
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_NPR_2B_DISC;
  spin_unlock_irq(shost->host_lock);
  return ndlp;
 }





 if ((vport->fc_flag & FC_RSCN_MODE) &&
     !(vport->fc_flag & FC_NDISC_ACTIVE)) {
  if (lpfc_rscn_payload_check(vport, did)) {




   lpfc_cancel_retry_delay_tmo(vport, ndlp);






   if (vport->phba->nvmet_support)
    return ndlp;




   if (ndlp->nlp_flag & NLP_RCV_PLOGI)
    return ((void*)0);

   spin_lock_irq(shost->host_lock);
   ndlp->nlp_flag |= NLP_NPR_2B_DISC;
   spin_unlock_irq(shost->host_lock);
  } else
   ndlp = ((void*)0);
 } else {




  if (ndlp->nlp_state == NLP_STE_ADISC_ISSUE ||
      ndlp->nlp_state == NLP_STE_PLOGI_ISSUE ||
      (!vport->phba->nvmet_support &&
       ndlp->nlp_flag & NLP_RCV_PLOGI))
   return ((void*)0);

  if (vport->phba->nvmet_support)
   return ndlp;




  lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);

  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_NPR_2B_DISC;
  spin_unlock_irq(shost->host_lock);
 }
 return ndlp;
}
