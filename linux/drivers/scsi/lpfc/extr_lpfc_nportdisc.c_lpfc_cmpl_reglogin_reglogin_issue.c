
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int fc_flag; scalar_t__ cfg_enable_fc4_type; int fc_myDID; int port_state; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_type; int nlp_state; void* nlp_prev_state; int nlp_fc4_type; int nlp_DID; int nlp_flag; int nlp_rpi; int nlp_last_elscmd; int nlp_delayfunc; } ;
struct lpfc_hba {scalar_t__ sli_rev; scalar_t__ nvmet_support; scalar_t__ fc_topology; TYPE_4__* targetport; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_8__ {int rpi; int vpi; } ;
struct TYPE_9__ {int * varWords; TYPE_2__ varRegLogin; } ;
struct TYPE_11__ {scalar_t__ mbxStatus; TYPE_3__ un; } ;
struct TYPE_7__ {TYPE_5__ mb; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
struct TYPE_10__ {int port_id; } ;
typedef TYPE_5__ MAILBOX_t ;
typedef TYPE_6__ LPFC_MBOXQ_t ;


 int ELS_CMD_PLOGI ;
 int FC_PT2PT ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 scalar_t__ LPFC_ENABLE_BOTH ;
 scalar_t__ LPFC_ENABLE_FCP ;
 scalar_t__ LPFC_ENABLE_NVME ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 scalar_t__ MBXERR_RPI_FULL ;
 int NLP_DELAY_TMO ;
 int NLP_FABRIC ;
 int NLP_FC4_FCP ;
 int NLP_FC4_NVME ;
 int NLP_RPI_REGISTERED ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_PRLI_ISSUE ;
 void* NLP_STE_REG_LOGIN_ISSUE ;
 int NLP_STE_UNMAPPED_NODE ;
 int SLI_CTNS_GFT_ID ;
 scalar_t__ jiffies ;
 int lpfc_issue_els_logo (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 scalar_t__ lpfc_issue_els_prli (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_ns_cmd (struct lpfc_vport*,int ,int ,int ) ;
 int lpfc_nvme_update_localport (struct lpfc_vport*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int,int ,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static uint32_t
lpfc_cmpl_reglogin_reglogin_issue(struct lpfc_vport *vport,
      struct lpfc_nodelist *ndlp,
      void *arg,
      uint32_t evt)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 LPFC_MBOXQ_t *pmb = (LPFC_MBOXQ_t *) arg;
 MAILBOX_t *mb = &pmb->u.mb;
 uint32_t did = mb->un.varWords[1];

 if (mb->mbxStatus) {

  lpfc_printf_vlog(vport, KERN_ERR, LOG_DISCOVERY,
    "0246 RegLogin failed Data: x%x x%x x%x x%x "
     "x%x\n",
     did, mb->mbxStatus, vport->port_state,
     mb->un.varRegLogin.vpi,
     mb->un.varRegLogin.rpi);




  if (mb->mbxStatus == MBXERR_RPI_FULL) {
   ndlp->nlp_prev_state = NLP_STE_REG_LOGIN_ISSUE;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
   return ndlp->nlp_state;
  }


  mod_timer(&ndlp->nlp_delayfunc,
     jiffies + msecs_to_jiffies(1000 * 1));
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_DELAY_TMO;
  spin_unlock_irq(shost->host_lock);
  ndlp->nlp_last_elscmd = ELS_CMD_PLOGI;

  lpfc_issue_els_logo(vport, ndlp, 0);
  ndlp->nlp_prev_state = NLP_STE_REG_LOGIN_ISSUE;
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
  return ndlp->nlp_state;
 }


 if (phba->sli_rev < LPFC_SLI_REV4)
  ndlp->nlp_rpi = mb->un.varWords[0];

 ndlp->nlp_flag |= NLP_RPI_REGISTERED;


 lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
    "3066 RegLogin Complete on x%x x%x x%x\n",
    did, ndlp->nlp_type, ndlp->nlp_fc4_type);
 if (!(ndlp->nlp_type & NLP_FABRIC) &&
     (phba->nvmet_support == 0)) {





  if (vport->fc_flag & FC_PT2PT) {




   ndlp->nlp_fc4_type |= NLP_FC4_FCP;
   if ((vport->cfg_enable_fc4_type == LPFC_ENABLE_BOTH) ||
       (vport->cfg_enable_fc4_type == LPFC_ENABLE_NVME)) {
    ndlp->nlp_fc4_type |= NLP_FC4_NVME;

    lpfc_nvme_update_localport(vport);
   }

  } else if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {
   ndlp->nlp_fc4_type |= NLP_FC4_FCP;

  } else if (ndlp->nlp_fc4_type == 0) {




   if (vport->cfg_enable_fc4_type != LPFC_ENABLE_FCP) {
    lpfc_ns_cmd(vport, SLI_CTNS_GFT_ID, 0,
         ndlp->nlp_DID);
    return ndlp->nlp_state;
   }
   ndlp->nlp_fc4_type = NLP_FC4_FCP;
  }

  ndlp->nlp_prev_state = NLP_STE_REG_LOGIN_ISSUE;
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_PRLI_ISSUE);
  if (lpfc_issue_els_prli(vport, ndlp, 0)) {
   lpfc_issue_els_logo(vport, ndlp, 0);
   ndlp->nlp_prev_state = NLP_STE_REG_LOGIN_ISSUE;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
  }
 } else {
  if ((vport->fc_flag & FC_PT2PT) && phba->nvmet_support)
   phba->targetport->port_id = vport->fc_myDID;




  if (ndlp->nlp_type & NLP_FABRIC) {
   ndlp->nlp_prev_state = NLP_STE_REG_LOGIN_ISSUE;
   lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);
  }
 }
 return ndlp->nlp_state;
}
