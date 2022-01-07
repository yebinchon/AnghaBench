
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {scalar_t__ cfg_enable_fc4_type; int load_flag; struct lpfc_hba* phba; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct TYPE_8__ {int wwn; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct TYPE_6__ {int wwn; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct lpfc_nodelist {int nlp_type; int nlp_sid; int nlp_DID; int vport; int nlp_class_sup; int nlp_maxframe; struct fc_rport* rport; int nlp_flag; TYPE_4__ nlp_portname; TYPE_2__ nlp_nodename; } ;
struct lpfc_hba {TYPE_5__* pcidev; } ;
struct fc_rport_identifiers {int roles; int port_id; void* port_name; void* node_name; } ;
struct fc_rport {int scsi_target_id; struct lpfc_rport_data* dd_data; int supported_classes; int maxframe_size; int dev; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_10__ {int dev; } ;


 int FC_PORT_ROLE_FCP_INITIATOR ;
 int FC_PORT_ROLE_FCP_TARGET ;
 int FC_PORT_ROLE_NVME_DISCOVERY ;
 int FC_PORT_ROLE_NVME_INITIATOR ;
 int FC_PORT_ROLE_NVME_TARGET ;
 int FC_RPORT_ROLE_UNKNOWN ;
 int FC_UNLOADING ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_NODE ;
 int LPFC_DISC_TRC_RPORT ;
 scalar_t__ LPFC_ENABLE_NVME ;
 int LPFC_MAX_TARGET ;
 int NLP_FCP_INITIATOR ;
 int NLP_FCP_TARGET ;
 int NLP_NVME_DISCOVERY ;
 int NLP_NVME_INITIATOR ;
 int NLP_NVME_TARGET ;
 int dev_printk (int ,int *,char*) ;
 struct fc_rport* fc_remote_port_add (struct Scsi_Host*,int ,struct fc_rport_identifiers*) ;
 int fc_remote_port_rolechg (struct fc_rport*,int ) ;
 int get_device (int *) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int) ;
 struct lpfc_nodelist* lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (int ,int ,int ,char*,int ,struct fc_rport*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int put_device (int *) ;
 void* wwn_to_u64 (int ) ;

__attribute__((used)) static void
lpfc_register_remote_port(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct fc_rport *rport;
 struct lpfc_rport_data *rdata;
 struct fc_rport_identifiers rport_ids;
 struct lpfc_hba *phba = vport->phba;

 if (vport->cfg_enable_fc4_type == LPFC_ENABLE_NVME)
  return;


 rport_ids.node_name = wwn_to_u64(ndlp->nlp_nodename.u.wwn);
 rport_ids.port_name = wwn_to_u64(ndlp->nlp_portname.u.wwn);
 rport_ids.port_id = ndlp->nlp_DID;
 rport_ids.roles = FC_RPORT_ROLE_UNKNOWN;
 rport = ndlp->rport;
 if (rport) {
  rdata = rport->dd_data;

  ndlp->rport = ((void*)0);
  if (rdata) {
   if (rdata->pnode == ndlp)
    lpfc_nlp_put(ndlp);
   rdata->pnode = ((void*)0);
  }

  put_device(&rport->dev);
 }

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_RPORT,
  "rport add:       did:x%x flg:x%x type x%x",
  ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_type);


 if (vport->load_flag & FC_UNLOADING)
  return;

 ndlp->rport = rport = fc_remote_port_add(shost, 0, &rport_ids);
 if (!rport || !get_device(&rport->dev)) {
  dev_printk(KERN_WARNING, &phba->pcidev->dev,
      "Warning: fc_remote_port_add failed\n");
  return;
 }


 rport->maxframe_size = ndlp->nlp_maxframe;
 rport->supported_classes = ndlp->nlp_class_sup;
 rdata = rport->dd_data;
 rdata->pnode = lpfc_nlp_get(ndlp);

 if (ndlp->nlp_type & NLP_FCP_TARGET)
  rport_ids.roles |= FC_PORT_ROLE_FCP_TARGET;
 if (ndlp->nlp_type & NLP_FCP_INITIATOR)
  rport_ids.roles |= FC_PORT_ROLE_FCP_INITIATOR;
 if (ndlp->nlp_type & NLP_NVME_INITIATOR)
  rport_ids.roles |= FC_PORT_ROLE_NVME_INITIATOR;
 if (ndlp->nlp_type & NLP_NVME_TARGET)
  rport_ids.roles |= FC_PORT_ROLE_NVME_TARGET;
 if (ndlp->nlp_type & NLP_NVME_DISCOVERY)
  rport_ids.roles |= FC_PORT_ROLE_NVME_DISCOVERY;

 if (rport_ids.roles != FC_RPORT_ROLE_UNKNOWN)
  fc_remote_port_rolechg(rport, rport_ids.roles);

 lpfc_printf_vlog(ndlp->vport, KERN_INFO, LOG_NODE,
    "3183 rport register x%06x, rport x%px role x%x\n",
    ndlp->nlp_DID, rport, rport_ids.roles);

 if ((rport->scsi_target_id != -1) &&
     (rport->scsi_target_id < LPFC_MAX_TARGET)) {
  ndlp->nlp_sid = rport->scsi_target_id;
 }
 return;
}
