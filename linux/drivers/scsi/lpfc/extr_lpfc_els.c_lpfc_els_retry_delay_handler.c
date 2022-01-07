
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int fc_flag; } ;
struct lpfc_nodelist {int nlp_last_elscmd; int nlp_flag; int nlp_retry; int nlp_state; int nlp_prev_state; int nlp_DID; int nlp_delayfunc; struct lpfc_vport* vport; } ;
struct Scsi_Host {int host_lock; } ;
 int FC_VPORT_NEEDS_INIT_VPI ;
 int NLP_DELAY_TMO ;
 int NLP_STE_ADISC_ISSUE ;
 int NLP_STE_LOGO_ISSUE ;
 int NLP_STE_PLOGI_ISSUE ;
 int NLP_STE_PRLI_ISSUE ;
 int del_timer_sync (int *) ;
 int lpfc_issue_els_adisc (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_issue_els_fdisc (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_issue_els_flogi (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_issue_els_logo (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_issue_els_plogi (struct lpfc_vport*,int ,int) ;
 int lpfc_issue_els_prli (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_els_retry_delay_handler(struct lpfc_nodelist *ndlp)
{
 struct lpfc_vport *vport = ndlp->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 uint32_t cmd, retry;

 spin_lock_irq(shost->host_lock);
 cmd = ndlp->nlp_last_elscmd;
 ndlp->nlp_last_elscmd = 0;

 if (!(ndlp->nlp_flag & NLP_DELAY_TMO)) {
  spin_unlock_irq(shost->host_lock);
  return;
 }

 ndlp->nlp_flag &= ~NLP_DELAY_TMO;
 spin_unlock_irq(shost->host_lock);





 del_timer_sync(&ndlp->nlp_delayfunc);
 retry = ndlp->nlp_retry;
 ndlp->nlp_retry = 0;

 switch (cmd) {
 case 132:
  lpfc_issue_els_flogi(vport, ndlp, retry);
  break;
 case 129:
  if (!lpfc_issue_els_plogi(vport, ndlp->nlp_DID, retry)) {
   ndlp->nlp_prev_state = ndlp->nlp_state;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_PLOGI_ISSUE);
  }
  break;
 case 134:
  if (!lpfc_issue_els_adisc(vport, ndlp, retry)) {
   ndlp->nlp_prev_state = ndlp->nlp_state;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_ADISC_ISSUE);
  }
  break;
 case 128:
 case 130:
  if (!lpfc_issue_els_prli(vport, ndlp, retry)) {
   ndlp->nlp_prev_state = ndlp->nlp_state;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_PRLI_ISSUE);
  }
  break;
 case 131:
  if (!lpfc_issue_els_logo(vport, ndlp, retry)) {
   ndlp->nlp_prev_state = ndlp->nlp_state;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_LOGO_ISSUE);
  }
  break;
 case 133:
  if (!(vport->fc_flag & FC_VPORT_NEEDS_INIT_VPI))
   lpfc_issue_els_fdisc(vport, ndlp, retry);
  break;
 }
 return;
}
