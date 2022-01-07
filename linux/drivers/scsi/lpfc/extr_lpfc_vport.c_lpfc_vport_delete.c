
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {scalar_t__ port_type; int vport_flag; int load_flag; scalar_t__ port_state; int vpi_state; int unreg_vpi_cmpl; int listentry; scalar_t__ work_port_events; int vpi; struct lpfc_hba* phba; scalar_t__ ct_flags; scalar_t__ cfg_enable_da_id; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; } ;
struct lpfc_hba {int fc_ratov; scalar_t__ link_state; scalar_t__ fc_topology; int port_list_lock; struct lpfc_vport* pport; int ndlp_lock; int hbalock; } ;
struct fc_vport {scalar_t__ dd_data; } ;
struct Scsi_Host {int dummy; } ;


 int EAGAIN ;
 int FC_UNLOADING ;
 int Fabric_DID ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int LOG_VPORT ;
 scalar_t__ LPFC_LINK_UP ;
 scalar_t__ LPFC_PHYSICAL_PORT ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int LPFC_VPI_REGISTERED ;
 scalar_t__ LPFC_VPORT_FAILED ;
 scalar_t__ LPFC_VPORT_READY ;
 int NLP_CHK_FREE_REQ (struct lpfc_nodelist*) ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_SET_FREE_REQ (struct lpfc_nodelist*) ;
 scalar_t__ NLP_STE_UNMAPPED_NODE ;
 int NLP_STE_UNUSED_NODE ;
 int NameServer_DID ;
 int SLI_CTNS_DA_ID ;
 int STATIC_VPORT ;
 int VPORT_ERROR ;
 int VPORT_INVAL ;
 int VPORT_OK ;
 int fc_remove_host (struct Scsi_Host*) ;
 int list_del_init (int *) ;
 int lpfc_cleanup (struct lpfc_vport*) ;
 int lpfc_debugfs_terminate (struct lpfc_vport*) ;
 int lpfc_dequeue_node (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_discovery_wait (struct lpfc_vport*) ;
 struct lpfc_nodelist* lpfc_enable_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_free_sysfs_attr (struct lpfc_vport*) ;
 int lpfc_free_vpi (struct lpfc_hba*,int ) ;
 int lpfc_issue_els_npiv_logo (struct lpfc_vport*,struct lpfc_nodelist*) ;
 scalar_t__ lpfc_mbx_unreg_vpi (struct lpfc_vport*) ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 struct lpfc_nodelist* lpfc_nlp_init (struct lpfc_vport*,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_ns_cmd (struct lpfc_vport*,int ,int ,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_host_down (struct lpfc_vport*) ;
 int lpfc_stop_vport_timers (struct lpfc_vport*) ;
 int lpfc_unreg_all_rpis (struct lpfc_vport*) ;
 int lpfc_unreg_default_rpis (struct lpfc_vport*) ;
 long msecs_to_jiffies (int) ;
 int msleep (int) ;
 long schedule_timeout (long) ;
 int scsi_host_get (struct Scsi_Host*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
lpfc_vport_delete(struct fc_vport *fc_vport)
{
 struct lpfc_nodelist *ndlp = ((void*)0);
 struct lpfc_vport *vport = *(struct lpfc_vport **)fc_vport->dd_data;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 long timeout;
 bool ns_ndlp_referenced = 0;

 if (vport->port_type == LPFC_PHYSICAL_PORT) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_VPORT,
     "1812 vport_delete failed: Cannot delete "
     "physical host\n");
  return VPORT_ERROR;
 }


 if ((vport->vport_flag & STATIC_VPORT) &&
  !(phba->pport->load_flag & FC_UNLOADING)) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_VPORT,
     "1837 vport_delete failed: Cannot delete "
     "static vport.\n");
  return VPORT_ERROR;
 }
 spin_lock_irq(&phba->hbalock);
 vport->load_flag |= FC_UNLOADING;
 spin_unlock_irq(&phba->hbalock);




 if (!(phba->pport->load_flag & FC_UNLOADING)) {
  int check_count = 0;
  while (check_count < ((phba->fc_ratov * 3) + 3) &&
         vport->port_state > LPFC_VPORT_FAILED &&
         vport->port_state < LPFC_VPORT_READY) {
   check_count++;
   msleep(1000);
  }
  if (vport->port_state > LPFC_VPORT_FAILED &&
      vport->port_state < LPFC_VPORT_READY)
   return -EAGAIN;
 }
 if (!scsi_host_get(shost))
  return VPORT_INVAL;
 if (!scsi_host_get(shost)) {
  scsi_host_put(shost);
  return VPORT_INVAL;
 }
 lpfc_free_sysfs_attr(vport);

 lpfc_debugfs_terminate(vport);







 ndlp = lpfc_findnode_did(vport, NameServer_DID);
 if (ndlp && NLP_CHK_NODE_ACT(ndlp)) {
  lpfc_nlp_get(ndlp);
  ns_ndlp_referenced = 1;
 }


 fc_remove_host(shost);
 scsi_remove_host(shost);

 ndlp = lpfc_findnode_did(phba->pport, Fabric_DID);





 if (phba->pport->load_flag & FC_UNLOADING) {
  if (ndlp && NLP_CHK_NODE_ACT(ndlp) &&
      ndlp->nlp_state == NLP_STE_UNMAPPED_NODE &&
      phba->link_state >= LPFC_LINK_UP) {

   ndlp = lpfc_findnode_did(vport, Fabric_DID);
   if (!ndlp)
    goto skip_logo;
   else if (!NLP_CHK_NODE_ACT(ndlp)) {
    ndlp = lpfc_enable_node(vport, ndlp,
       NLP_STE_UNUSED_NODE);
    if (!ndlp)
     goto skip_logo;
   }

   lpfc_dequeue_node(vport, ndlp);


   spin_lock_irq(&phba->ndlp_lock);
   NLP_SET_FREE_REQ(ndlp);
   spin_unlock_irq(&phba->ndlp_lock);

   lpfc_nlp_put(ndlp);
  }
  goto skip_logo;
 }


 if (ndlp && NLP_CHK_NODE_ACT(ndlp) &&
     ndlp->nlp_state == NLP_STE_UNMAPPED_NODE &&
     phba->link_state >= LPFC_LINK_UP &&
     phba->fc_topology != LPFC_TOPOLOGY_LOOP) {
  if (vport->cfg_enable_da_id) {
   timeout = msecs_to_jiffies(phba->fc_ratov * 2000);
   if (!lpfc_ns_cmd(vport, SLI_CTNS_DA_ID, 0, 0))
    while (vport->ct_flags && timeout)
     timeout = schedule_timeout(timeout);
   else
    lpfc_printf_log(vport->phba, KERN_WARNING,
      LOG_VPORT,
      "1829 CT command failed to "
      "delete objects on fabric\n");
  }

  ndlp = lpfc_findnode_did(vport, Fabric_DID);
  if (!ndlp) {

   ndlp = lpfc_nlp_init(vport, Fabric_DID);
   if (!ndlp)
    goto skip_logo;

   NLP_SET_FREE_REQ(ndlp);
  } else {
   if (!NLP_CHK_NODE_ACT(ndlp)) {
    ndlp = lpfc_enable_node(vport, ndlp,
      NLP_STE_UNUSED_NODE);
    if (!ndlp)
     goto skip_logo;
   }


   lpfc_dequeue_node(vport, ndlp);
   spin_lock_irq(&phba->ndlp_lock);
   if (!NLP_CHK_FREE_REQ(ndlp))

    NLP_SET_FREE_REQ(ndlp);
   else {

    spin_unlock_irq(&phba->ndlp_lock);
    goto skip_logo;
   }
   spin_unlock_irq(&phba->ndlp_lock);
  }






  if (!(vport->vpi_state & LPFC_VPI_REGISTERED)) {
   lpfc_nlp_put(ndlp);
   goto skip_logo;
  }

  vport->unreg_vpi_cmpl = VPORT_INVAL;
  timeout = msecs_to_jiffies(phba->fc_ratov * 2000);
  if (!lpfc_issue_els_npiv_logo(vport, ndlp))
   while (vport->unreg_vpi_cmpl == VPORT_INVAL && timeout)
    timeout = schedule_timeout(timeout);
 }

 if (!(phba->pport->load_flag & FC_UNLOADING))
  lpfc_discovery_wait(vport);

skip_logo:





 if (ns_ndlp_referenced) {
  ndlp = lpfc_findnode_did(vport, NameServer_DID);
  lpfc_nlp_put(ndlp);
 }

 lpfc_cleanup(vport);
 lpfc_sli_host_down(vport);

 lpfc_stop_vport_timers(vport);

 if (!(phba->pport->load_flag & FC_UNLOADING)) {
  lpfc_unreg_all_rpis(vport);
  lpfc_unreg_default_rpis(vport);




  if (!(vport->vpi_state & LPFC_VPI_REGISTERED) ||
    lpfc_mbx_unreg_vpi(vport))
   scsi_host_put(shost);
 } else
  scsi_host_put(shost);

 lpfc_free_vpi(phba, vport->vpi);
 vport->work_port_events = 0;
 spin_lock_irq(&phba->port_list_lock);
 list_del_init(&vport->listentry);
 spin_unlock_irq(&phba->port_list_lock);
 lpfc_printf_vlog(vport, KERN_ERR, LOG_VPORT,
    "1828 Vport Deleted.\n");
 scsi_host_put(shost);
 return VPORT_OK;
}
