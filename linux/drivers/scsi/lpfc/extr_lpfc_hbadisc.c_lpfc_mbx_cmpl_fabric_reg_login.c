
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lpfc_vport {scalar_t__ port_state; int fc_flag; } ;
struct lpfc_nodelist {int nlp_type; int nlp_flag; int nlp_rpi; } ;
struct lpfc_hba {scalar_t__ fc_topology; scalar_t__ sli_rev; int mbox_mem_pool; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_8__ {int * varWords; } ;
struct TYPE_9__ {TYPE_2__ un; scalar_t__ mbxStatus; } ;
struct TYPE_7__ {TYPE_3__ mb; } ;
struct TYPE_10__ {int * ctx_buf; int * ctx_ndlp; TYPE_1__ u; struct lpfc_vport* vport; } ;
typedef TYPE_3__ MAILBOX_t ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int FC_LOGO_RCVD_DID_CHNG ;
 int FC_VPORT_FAILED ;
 int KERN_ERR ;
 int LOG_MBOX ;
 scalar_t__ LPFC_FABRIC_CFG_LINK ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int NLP_FABRIC ;
 int NLP_RPI_REGISTERED ;
 int NLP_STE_UNMAPPED_NODE ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_disc_list_loopmap (struct lpfc_vport*) ;
 int lpfc_disc_start (struct lpfc_vport*) ;
 int lpfc_do_scr_ns_plogi (struct lpfc_hba*,struct lpfc_vport*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_start_fdiscs (struct lpfc_hba*) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 int mempool_free (TYPE_4__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_mbx_cmpl_fabric_reg_login(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 struct lpfc_vport *vport = pmb->vport;
 MAILBOX_t *mb = &pmb->u.mb;
 struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *)(pmb->ctx_buf);
 struct lpfc_nodelist *ndlp;
 struct Scsi_Host *shost;

 ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;
 pmb->ctx_ndlp = ((void*)0);
 pmb->ctx_buf = ((void*)0);

 if (mb->mbxStatus) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_MBOX,
     "0258 Register Fabric login error: 0x%x\n",
     mb->mbxStatus);
  lpfc_mbuf_free(phba, mp->virt, mp->phys);
  kfree(mp);
  mempool_free(pmb, phba->mbox_mem_pool);

  if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {

   lpfc_disc_list_loopmap(vport);


   lpfc_disc_start(vport);



   lpfc_nlp_put(ndlp);
   return;
  }

  lpfc_vport_set_state(vport, FC_VPORT_FAILED);



  lpfc_nlp_put(ndlp);
  return;
 }

 if (phba->sli_rev < LPFC_SLI_REV4)
  ndlp->nlp_rpi = mb->un.varWords[0];
 ndlp->nlp_flag |= NLP_RPI_REGISTERED;
 ndlp->nlp_type |= NLP_FABRIC;
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);

 if (vport->port_state == LPFC_FABRIC_CFG_LINK) {


  if (!(vport->fc_flag & FC_LOGO_RCVD_DID_CHNG))
   lpfc_start_fdiscs(phba);
  else {
   shost = lpfc_shost_from_vport(vport);
   spin_lock_irq(shost->host_lock);
   vport->fc_flag &= ~FC_LOGO_RCVD_DID_CHNG ;
   spin_unlock_irq(shost->host_lock);
  }
  lpfc_do_scr_ns_plogi(phba, vport);
 }

 lpfc_mbuf_free(phba, mp->virt, mp->phys);
 kfree(mp);
 mempool_free(pmb, phba->mbox_mem_pool);




 lpfc_nlp_put(ndlp);
 return;
}
