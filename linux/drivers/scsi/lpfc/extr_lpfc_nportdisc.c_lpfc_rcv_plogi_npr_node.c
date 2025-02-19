
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; int nlp_DID; int nlp_prev_state; } ;
struct lpfc_iocbq {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 int NLP_DELAY_TMO ;
 int NLP_LOGO_ACC ;
 int NLP_LOGO_SND ;
 int NLP_NPR_2B_DISC ;
 int NLP_NPR_ADISC ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_PLOGI_ISSUE ;
 int lpfc_cancel_retry_delay_tmo (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_issue_els_plogi (struct lpfc_vport*,int ,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 scalar_t__ lpfc_rcv_plogi (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_rcv_plogi_npr_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
   void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;


 if (ndlp->nlp_flag & (NLP_LOGO_SND | NLP_LOGO_ACC))
  return ndlp->nlp_state;
 if (lpfc_rcv_plogi(vport, ndlp, cmdiocb)) {
  lpfc_cancel_retry_delay_tmo(vport, ndlp);
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag &= ~(NLP_NPR_ADISC | NLP_NPR_2B_DISC);
  spin_unlock_irq(shost->host_lock);
 } else if (!(ndlp->nlp_flag & NLP_NPR_2B_DISC)) {

  if (!(ndlp->nlp_flag & NLP_DELAY_TMO)) {
   ndlp->nlp_prev_state = NLP_STE_NPR_NODE;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_PLOGI_ISSUE);
   lpfc_issue_els_plogi(vport, ndlp->nlp_DID, 0);
  }
 }
 return ndlp->nlp_state;
}
