
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int nlp_listp; } ;
struct Scsi_Host {int host_lock; } ;


 int NLP_STE_UNUSED_NODE ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lpfc_cancel_retry_delay_tmo (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_nlp_counters (struct lpfc_vport*,scalar_t__,int) ;
 int lpfc_nlp_state_cleanup (struct lpfc_vport*,struct lpfc_nodelist*,scalar_t__,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_dequeue_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 lpfc_cancel_retry_delay_tmo(vport, ndlp);
 if (ndlp->nlp_state && !list_empty(&ndlp->nlp_listp))
  lpfc_nlp_counters(vport, ndlp->nlp_state, -1);
 spin_lock_irq(shost->host_lock);
 list_del_init(&ndlp->nlp_listp);
 spin_unlock_irq(shost->host_lock);
 lpfc_nlp_state_cleanup(vport, ndlp, ndlp->nlp_state,
    NLP_STE_UNUSED_NODE);
}
