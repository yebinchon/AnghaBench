
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_vport {scalar_t__ stat_data_enabled; TYPE_1__* phba; } ;
struct lpfc_scsicmd_bkt {int dummy; } ;
struct lpfc_nodelist {int nlp_type; int nlp_fc4_type; scalar_t__ nlp_DID; int nlp_flag; TYPE_2__* rport; int lat_data; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_4__ {int scsi_target_id; } ;
struct TYPE_3__ {scalar_t__ nvmet_support; scalar_t__ sli_rev; int nport_event_cnt; } ;


 scalar_t__ FDMI_DID ;
 scalar_t__ Fabric_DID ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_NODE ;
 int LPFC_MAX_BUCKET_COUNT ;
 int LPFC_MAX_TARGET ;
 scalar_t__ LPFC_SLI_REV4 ;
 int NLP_FC4_NVME ;
 int NLP_FCP_TARGET ;
 int NLP_FC_NODE ;
 int NLP_NODEV_REMOVE ;
 int NLP_NVME_TARGET ;
 int NLP_RCV_PLOGI ;
 int NLP_STE_MAPPED_NODE ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_UNMAPPED_NODE ;
 int NLP_TGT_NO_SCSIID ;
 scalar_t__ NameServer_DID ;
 int kcalloc (int ,int,int ) ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int) ;
 int lpfc_nvme_register_port (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_nvme_unregister_port (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__) ;
 int lpfc_register_remote_port (struct lpfc_vport*,struct lpfc_nodelist*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_unregister_remote_port (struct lpfc_nodelist*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_nlp_state_cleanup(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
         int old_state, int new_state)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 if (new_state == NLP_STE_UNMAPPED_NODE) {
  ndlp->nlp_flag &= ~NLP_NODEV_REMOVE;
  ndlp->nlp_type |= NLP_FC_NODE;
 }
 if (new_state == NLP_STE_MAPPED_NODE)
  ndlp->nlp_flag &= ~NLP_NODEV_REMOVE;
 if (new_state == NLP_STE_NPR_NODE)
  ndlp->nlp_flag &= ~NLP_RCV_PLOGI;


 if ((old_state == NLP_STE_MAPPED_NODE ||
      old_state == NLP_STE_UNMAPPED_NODE)) {
  if (ndlp->rport) {
   vport->phba->nport_event_cnt++;
   lpfc_unregister_remote_port(ndlp);
  }

  if (ndlp->nlp_fc4_type & NLP_FC4_NVME) {
   vport->phba->nport_event_cnt++;
   if (vport->phba->nvmet_support == 0) {

    if (ndlp->nlp_type & NLP_NVME_TARGET)
     lpfc_nvme_unregister_port(vport, ndlp);
   } else {

    lpfc_nlp_put(ndlp);
   }
  }
 }



 if (new_state == NLP_STE_MAPPED_NODE ||
     new_state == NLP_STE_UNMAPPED_NODE) {
  if (ndlp->nlp_fc4_type ||
      ndlp->nlp_DID == Fabric_DID ||
      ndlp->nlp_DID == NameServer_DID ||
      ndlp->nlp_DID == FDMI_DID) {
   vport->phba->nport_event_cnt++;




   lpfc_register_remote_port(vport, ndlp);
  }

  if (vport->phba->sli_rev >= LPFC_SLI_REV4 &&
      ndlp->nlp_fc4_type & NLP_FC4_NVME) {
   if (vport->phba->nvmet_support == 0) {




    if (ndlp->nlp_type & NLP_NVME_TARGET) {
     vport->phba->nport_event_cnt++;
     lpfc_nvme_register_port(vport, ndlp);
    }
   } else {



    lpfc_nlp_get(ndlp);
   }
  }
 }

 if ((new_state == NLP_STE_MAPPED_NODE) &&
  (vport->stat_data_enabled)) {




  ndlp->lat_data = kcalloc(LPFC_MAX_BUCKET_COUNT,
      sizeof(struct lpfc_scsicmd_bkt),
      GFP_KERNEL);

  if (!ndlp->lat_data)
   lpfc_printf_vlog(vport, KERN_ERR, LOG_NODE,
    "0286 lpfc_nlp_state_cleanup failed to "
    "allocate statistical data buffer DID "
    "0x%x\n", ndlp->nlp_DID);
 }






 if ((new_state == NLP_STE_MAPPED_NODE) &&
     (ndlp->nlp_type & NLP_FCP_TARGET) &&
     (!ndlp->rport ||
      ndlp->rport->scsi_target_id == -1 ||
      ndlp->rport->scsi_target_id >= LPFC_MAX_TARGET)) {
  spin_lock_irq(shost->host_lock);
  ndlp->nlp_flag |= NLP_TGT_NO_SCSIID;
  spin_unlock_irq(shost->host_lock);
  lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);
 }
}
