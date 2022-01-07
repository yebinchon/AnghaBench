
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct serv_parm {int nodeName; int portName; } ;
struct lpfc_vport {int fc_flag; int fc_myDID; int fc_portname; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_nodename; int nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {scalar_t__ sli_rev; int mbox_mem_pool; scalar_t__ fc_topology_changed; int sli3_options; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_6__ {struct lpfc_vport* vport; int mbox_cmpl; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int ENXIO ;
 int FC_FABRIC ;
 int FC_PT2PT ;
 int FC_PT2PT_PLOGI ;
 int FC_PUBLIC_LOOP ;
 int FC_VFI_REGISTERED ;
 int GFP_KERNEL ;
 int LPFC_SLI3_NPIV_ENABLED ;
 scalar_t__ LPFC_SLI_REV4 ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_NPR_2B_DISC ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_UNUSED_NODE ;
 int PT2PT_LocalID ;
 int PT2PT_RemoteID ;
 int lpfc_config_link (struct lpfc_hba*,TYPE_1__*) ;
 int lpfc_disc_start (struct lpfc_vport*) ;
 struct lpfc_nodelist* lpfc_enable_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_mbx_cmpl_local_config_link ;
 struct lpfc_nodelist* lpfc_nlp_init (struct lpfc_vport*,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 int lpfc_unregister_fcf_prep (struct lpfc_hba*) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 TYPE_1__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_1__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int
lpfc_cmpl_els_flogi_nport(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
     struct serv_parm *sp)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 LPFC_MBOXQ_t *mbox;
 int rc;

 spin_lock_irq(shost->host_lock);
 vport->fc_flag &= ~(FC_FABRIC | FC_PUBLIC_LOOP);
 vport->fc_flag |= FC_PT2PT;
 spin_unlock_irq(shost->host_lock);


 phba->sli3_options &= ~LPFC_SLI3_NPIV_ENABLED;


 if ((phba->sli_rev == LPFC_SLI_REV4) && phba->fc_topology_changed) {
  lpfc_unregister_fcf_prep(phba);

  spin_lock_irq(shost->host_lock);
  vport->fc_flag &= ~FC_VFI_REGISTERED;
  spin_unlock_irq(shost->host_lock);
  phba->fc_topology_changed = 0;
 }

 rc = memcmp(&vport->fc_portname, &sp->portName,
      sizeof(vport->fc_portname));

 if (rc >= 0) {

  spin_lock_irq(shost->host_lock);
  vport->fc_flag |= FC_PT2PT_PLOGI;
  spin_unlock_irq(shost->host_lock);







  if (rc)
   vport->fc_myDID = PT2PT_LocalID;




  lpfc_nlp_put(ndlp);

  ndlp = lpfc_findnode_did(vport, PT2PT_RemoteID);
  if (!ndlp) {




   ndlp = lpfc_nlp_init(vport, PT2PT_RemoteID);
   if (!ndlp)
    goto fail;
  } else if (!NLP_CHK_NODE_ACT(ndlp)) {
   ndlp = lpfc_enable_node(vport, ndlp,
      NLP_STE_UNUSED_NODE);
   if(!ndlp)
    goto fail;
  }

  memcpy(&ndlp->nlp_portname, &sp->portName,
         sizeof(struct lpfc_name));
  memcpy(&ndlp->nlp_nodename, &sp->nodeName,
         sizeof(struct lpfc_name));

  lpfc_nlp_set_state(vport, ndlp, NLP_STE_NPR_NODE);
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_NPR_2B_DISC;
  spin_unlock_irq(shost->host_lock);

  mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
  if (!mbox)
   goto fail;

  lpfc_config_link(phba, mbox);

  mbox->mbox_cmpl = lpfc_mbx_cmpl_local_config_link;
  mbox->vport = vport;
  rc = lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT);
  if (rc == MBX_NOT_FINISHED) {
   mempool_free(mbox, phba->mbox_mem_pool);
   goto fail;
  }
 } else {




  lpfc_nlp_put(ndlp);


  lpfc_disc_start(vport);
 }

 return 0;
fail:
 return -ENXIO;
}
