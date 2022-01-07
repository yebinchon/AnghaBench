
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_fc_remote_port {struct lpfc_nvme_rport* private; } ;
struct lpfc_vport {TYPE_1__* phba; } ;
struct lpfc_nvme_rport {struct lpfc_nodelist* ndlp; } ;
struct lpfc_nodelist {int upcall_flags; int * nrport; struct lpfc_vport* vport; } ;
struct TYPE_2__ {int hbalock; } ;


 int KERN_INFO ;
 int LOG_NVME_DISC ;
 int NLP_WAIT_FOR_UNREG ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,struct nvme_fc_remote_port*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_nvme_remoteport_delete(struct nvme_fc_remote_port *remoteport)
{
 struct lpfc_nvme_rport *rport = remoteport->private;
 struct lpfc_vport *vport;
 struct lpfc_nodelist *ndlp;

 ndlp = rport->ndlp;
 if (!ndlp)
  goto rport_err;

 vport = ndlp->vport;
 if (!vport)
  goto rport_err;





 lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_DISC,
   "6146 remoteport delete of remoteport x%px\n",
   remoteport);
 spin_lock_irq(&vport->phba->hbalock);




 if (ndlp->upcall_flags & NLP_WAIT_FOR_UNREG) {
  ndlp->nrport = ((void*)0);
  ndlp->upcall_flags &= ~NLP_WAIT_FOR_UNREG;
 }
 spin_unlock_irq(&vport->phba->hbalock);




 lpfc_nlp_put(ndlp);

 rport_err:
 return;
}
