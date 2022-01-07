
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int nlp_prev_state; int nlp_last_elscmd; int nlp_flag; int nlp_delayfunc; } ;
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 int ELS_CMD_ACC ;
 int ELS_CMD_PLOGI ;
 int NLP_DELAY_TMO ;
 scalar_t__ NLP_EVT_RCV_LOGO ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_PLOGI_ISSUE ;
 scalar_t__ jiffies ;
 int lpfc_els_abort (struct lpfc_hba*,struct lpfc_nodelist*) ;
 int lpfc_els_rsp_acc (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_issue_els_logo (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_rcv_els_plogi_issue(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
    void *arg, uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;


 lpfc_els_abort(phba, ndlp);

 if (evt == NLP_EVT_RCV_LOGO) {
  lpfc_els_rsp_acc(vport, ELS_CMD_ACC, cmdiocb, ndlp, ((void*)0));
 } else {
  lpfc_issue_els_logo(vport, ndlp, 0);
 }


 mod_timer(&ndlp->nlp_delayfunc, jiffies + msecs_to_jiffies(1000 * 1));
 spin_lock_irq(shost->host_lock);
 ndlp->nlp_flag |= NLP_DELAY_TMO;
 spin_unlock_irq(shost->host_lock);
 ndlp->nlp_last_elscmd = ELS_CMD_PLOGI;
 ndlp->nlp_prev_state = NLP_STE_PLOGI_ISSUE;
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);

 return ndlp->nlp_state;
}
