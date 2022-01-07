
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_flag; int load_flag; int delayed_disc_tmo; } ;
struct lpfc_nodelist {int nlp_DID; int nlp_type; } ;
struct lpfc_hba {int fc_ratov; scalar_t__ fc_topology; scalar_t__ cfg_fdmi_on; scalar_t__ cfg_enable_SmartSAN; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_ALLOW_FDMI ;
 int FC_DISC_DELAYED ;
 int FC_VPORT_FAILED ;
 int KERN_ERR ;
 int LOG_DISCOVERY ;
 int LOG_ELS ;
 scalar_t__ LPFC_FDMI_SUPPORT ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_FABRIC ;
 int NLP_STE_PLOGI_ISSUE ;
 int NLP_STE_UNUSED_NODE ;
 int NameServer_DID ;
 scalar_t__ jiffies ;
 int lpfc_disc_start (struct lpfc_vport*) ;
 struct lpfc_nodelist* lpfc_enable_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 scalar_t__ lpfc_issue_els_plogi (struct lpfc_vport*,int ,int ) ;
 struct lpfc_nodelist* lpfc_nlp_init (struct lpfc_vport*,int ) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_start_fdmi (struct lpfc_vport*) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_do_scr_ns_plogi(struct lpfc_hba *phba, struct lpfc_vport *vport)
{
 struct lpfc_nodelist *ndlp;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);






 spin_lock_irq(shost->host_lock);
 if (vport->fc_flag & FC_DISC_DELAYED) {
  spin_unlock_irq(shost->host_lock);
  lpfc_printf_log(phba, KERN_ERR, LOG_DISCOVERY,
    "3334 Delay fc port discovery for %d seconds\n",
    phba->fc_ratov);
  mod_timer(&vport->delayed_disc_tmo,
   jiffies + msecs_to_jiffies(1000 * phba->fc_ratov));
  return;
 }
 spin_unlock_irq(shost->host_lock);

 ndlp = lpfc_findnode_did(vport, NameServer_DID);
 if (!ndlp) {
  ndlp = lpfc_nlp_init(vport, NameServer_DID);
  if (!ndlp) {
   if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {
    lpfc_disc_start(vport);
    return;
   }
   lpfc_vport_set_state(vport, FC_VPORT_FAILED);
   lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
      "0251 NameServer login: no memory\n");
   return;
  }
 } else if (!NLP_CHK_NODE_ACT(ndlp)) {
  ndlp = lpfc_enable_node(vport, ndlp, NLP_STE_UNUSED_NODE);
  if (!ndlp) {
   if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {
    lpfc_disc_start(vport);
    return;
   }
   lpfc_vport_set_state(vport, FC_VPORT_FAILED);
   lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
     "0348 NameServer login: node freed\n");
   return;
  }
 }
 ndlp->nlp_type |= NLP_FABRIC;

 lpfc_nlp_set_state(vport, ndlp, NLP_STE_PLOGI_ISSUE);

 if (lpfc_issue_els_plogi(vport, ndlp->nlp_DID, 0)) {
  lpfc_vport_set_state(vport, FC_VPORT_FAILED);
  lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
     "0252 Cannot issue NameServer login\n");
  return;
 }

 if ((phba->cfg_enable_SmartSAN ||
      (phba->cfg_fdmi_on == LPFC_FDMI_SUPPORT)) &&
      (vport->load_flag & FC_ALLOW_FDMI))
  lpfc_start_fdmi(vport);
}
