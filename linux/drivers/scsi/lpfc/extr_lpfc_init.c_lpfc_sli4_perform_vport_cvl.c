
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {scalar_t__ port_state; int fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_type; } ;
struct lpfc_hba {struct lpfc_vport* pport; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_VPORT_CVL_RCVD ;
 int Fabric_DID ;
 scalar_t__ LPFC_FDISC ;
 scalar_t__ LPFC_FLOGI ;
 scalar_t__ LPFC_VPORT_FAILED ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_FABRIC ;
 int NLP_STE_UNUSED_NODE ;
 int lpfc_cleanup_pending_mbox (struct lpfc_vport*) ;
 struct lpfc_nodelist* lpfc_enable_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_enqueue_node (struct lpfc_vport*,struct lpfc_nodelist*) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_linkdown_port (struct lpfc_vport*) ;
 struct lpfc_nodelist* lpfc_nlp_init (struct lpfc_vport*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static struct lpfc_nodelist *
lpfc_sli4_perform_vport_cvl(struct lpfc_vport *vport)
{
 struct lpfc_nodelist *ndlp;
 struct Scsi_Host *shost;
 struct lpfc_hba *phba;

 if (!vport)
  return ((void*)0);
 phba = vport->phba;
 if (!phba)
  return ((void*)0);
 ndlp = lpfc_findnode_did(vport, Fabric_DID);
 if (!ndlp) {

  ndlp = lpfc_nlp_init(vport, Fabric_DID);
  if (!ndlp)
   return 0;

  ndlp->nlp_type |= NLP_FABRIC;

  lpfc_enqueue_node(vport, ndlp);
 } else if (!NLP_CHK_NODE_ACT(ndlp)) {

  ndlp = lpfc_enable_node(vport, ndlp, NLP_STE_UNUSED_NODE);
  if (!ndlp)
   return 0;
 }
 if ((phba->pport->port_state < LPFC_FLOGI) &&
  (phba->pport->port_state != LPFC_VPORT_FAILED))
  return ((void*)0);

 if ((vport != phba->pport) && (vport->port_state < LPFC_FDISC)
  && (vport->port_state != LPFC_VPORT_FAILED))
  return ((void*)0);
 shost = lpfc_shost_from_vport(vport);
 if (!shost)
  return ((void*)0);
 lpfc_linkdown_port(vport);
 lpfc_cleanup_pending_mbox(vport);
 spin_lock_irq(shost->host_lock);
 vport->fc_flag |= FC_VPORT_CVL_RCVD;
 spin_unlock_irq(shost->host_lock);

 return ndlp;
}
