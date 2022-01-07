
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {scalar_t__ port_state; int fc_flag; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int link_flag; int mbox_mem_pool; struct lpfc_vport* pport; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_6__ {scalar_t__ mbxStatus; } ;
struct TYPE_7__ {TYPE_1__ mb; } ;
struct TYPE_8__ {TYPE_2__ u; struct lpfc_vport* vport; } ;
typedef TYPE_3__ LPFC_MBOXQ_t ;


 int FC_VPORT_FAILED ;
 int FC_VPORT_NEEDS_INIT_VPI ;
 int FC_VPORT_NO_FABRIC_SUPP ;
 int Fabric_DID ;
 int KERN_ERR ;
 int LOG_DISCOVERY ;
 int LOG_ELS ;
 int LOG_MBOX ;
 scalar_t__ LPFC_FDISC ;
 int LS_NPIV_FAB_SUPPORTED ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_initial_fdisc (struct lpfc_vport*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;
 int lpfc_register_new_vport (struct lpfc_hba*,struct lpfc_vport*,struct lpfc_nodelist*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 int mempool_free (TYPE_3__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_init_vpi_cmpl(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
 struct lpfc_vport *vport = mboxq->vport;
 struct lpfc_nodelist *ndlp;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 if (mboxq->u.mb.mbxStatus) {
  lpfc_printf_vlog(vport, KERN_ERR,
    LOG_MBOX,
    "2609 Init VPI mailbox failed 0x%x\n",
    mboxq->u.mb.mbxStatus);
  mempool_free(mboxq, phba->mbox_mem_pool);
  lpfc_vport_set_state(vport, FC_VPORT_FAILED);
  return;
 }
 spin_lock_irq(shost->host_lock);
 vport->fc_flag &= ~FC_VPORT_NEEDS_INIT_VPI;
 spin_unlock_irq(shost->host_lock);


 if ((phba->pport == vport) || (vport->port_state == LPFC_FDISC)) {
   ndlp = lpfc_findnode_did(vport, Fabric_DID);
   if (!ndlp)
    lpfc_printf_vlog(vport, KERN_ERR,
     LOG_DISCOVERY,
     "2731 Cannot find fabric "
     "controller node\n");
   else
    lpfc_register_new_vport(phba, vport, ndlp);
   mempool_free(mboxq, phba->mbox_mem_pool);
   return;
 }

 if (phba->link_flag & LS_NPIV_FAB_SUPPORTED)
  lpfc_initial_fdisc(vport);
 else {
  lpfc_vport_set_state(vport, FC_VPORT_NO_FABRIC_SUPP);
  lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
     "2606 No NPIV Fabric support\n");
 }
 mempool_free(mboxq, phba->mbox_mem_pool);
 return;
}
