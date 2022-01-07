
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {scalar_t__ num_disc_nodes; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; int nlp_DID; int nlp_prev_state; } ;
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 int NLP_NPR_2B_DISC ;
 int NLP_STE_ADISC_ISSUE ;
 int NLP_STE_PLOGI_ISSUE ;
 int lpfc_els_abort (struct lpfc_hba*,struct lpfc_nodelist*) ;
 int lpfc_issue_els_plogi (struct lpfc_vport*,int ,int ) ;
 int lpfc_more_adisc (struct lpfc_vport*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 scalar_t__ lpfc_rcv_plogi (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_rcv_plogi_adisc_issue(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
      void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *cmdiocb;


 lpfc_els_abort(phba, ndlp);

 cmdiocb = (struct lpfc_iocbq *) arg;

 if (lpfc_rcv_plogi(vport, ndlp, cmdiocb)) {
  if (ndlp->nlp_flag & NLP_NPR_2B_DISC) {
   spin_lock_irq(shost->host_lock);
   ndlp->nlp_flag &= ~NLP_NPR_2B_DISC;
   spin_unlock_irq(shost->host_lock);
   if (vport->num_disc_nodes)
    lpfc_more_adisc(vport);
  }
  return ndlp->nlp_state;
 }
 ndlp->nlp_prev_state = NLP_STE_ADISC_ISSUE;
 lpfc_issue_els_plogi(vport, ndlp->nlp_DID, 0);
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_PLOGI_ISSUE);

 return ndlp->nlp_state;
}
