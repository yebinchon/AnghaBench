
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_nodes; } ;
struct lpfc_nodelist {int nlp_listp; } ;
struct Scsi_Host {int host_lock; } ;


 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_enqueue_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 if (list_empty(&ndlp->nlp_listp)) {
  spin_lock_irq(shost->host_lock);
  list_add_tail(&ndlp->nlp_listp, &vport->fc_nodes);
  spin_unlock_irq(shost->host_lock);
 }
}
