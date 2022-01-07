
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_work_evt {int evt_listp; int evt; scalar_t__ evt_arg1; } ;
struct lpfc_vport {int load_flag; struct lpfc_hba* phba; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct TYPE_3__ {int wwn; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int nlp_flag; struct lpfc_work_evt dev_loss_evt; TYPE_2__ nlp_portname; int * rport; int nlp_DID; struct lpfc_vport* vport; int nlp_sid; } ;
struct lpfc_hba {int hbalock; int work_list; } ;
struct fc_rport {scalar_t__ port_name; int dev; struct lpfc_rport_data* dd_data; } ;
struct Scsi_Host {int * host_lock; } ;


 int FC_UNLOADING ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_NODE ;
 int LPFC_DISC_TRC_RPORT ;
 int LPFC_EVT_DEV_LOSS ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_IN_DEV_LOSS ;
 scalar_t__ NLP_STE_MAPPED_NODE ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 scalar_t__ lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int put_device (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ wwn_to_u64 (int ) ;

void
lpfc_dev_loss_tmo_callbk(struct fc_rport *rport)
{
 struct lpfc_rport_data *rdata;
 struct lpfc_nodelist * ndlp;
 struct lpfc_vport *vport;
 struct Scsi_Host *shost;
 struct lpfc_hba *phba;
 struct lpfc_work_evt *evtp;
 int put_node;
 int put_rport;
 unsigned long iflags;

 rdata = rport->dd_data;
 ndlp = rdata->pnode;
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp))
  return;

 vport = ndlp->vport;
 phba = vport->phba;

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_RPORT,
  "rport devlosscb: sid:x%x did:x%x flg:x%x",
  ndlp->nlp_sid, ndlp->nlp_DID, ndlp->nlp_flag);

 lpfc_printf_vlog(ndlp->vport, KERN_INFO, LOG_NODE,
    "3181 dev_loss_callbk x%06x, rport x%px flg x%x\n",
    ndlp->nlp_DID, ndlp->rport, ndlp->nlp_flag);





 if (vport->load_flag & FC_UNLOADING) {
  put_node = rdata->pnode != ((void*)0);
  put_rport = ndlp->rport != ((void*)0);
  rdata->pnode = ((void*)0);
  ndlp->rport = ((void*)0);
  if (put_node)
   lpfc_nlp_put(ndlp);
  if (put_rport)
   put_device(&rport->dev);
  return;
 }

 if (ndlp->nlp_state == NLP_STE_MAPPED_NODE)
  return;

 if (rport->port_name != wwn_to_u64(ndlp->nlp_portname.u.wwn))
  lpfc_printf_vlog(vport, KERN_ERR, LOG_NODE,
    "6789 rport name %llx != node port name %llx",
    rport->port_name,
    wwn_to_u64(ndlp->nlp_portname.u.wwn));

 evtp = &ndlp->dev_loss_evt;

 if (!list_empty(&evtp->evt_listp)) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_NODE,
    "6790 rport name %llx dev_loss_evt pending",
    rport->port_name);
  return;
 }

 shost = lpfc_shost_from_vport(vport);
 spin_lock_irqsave(shost->host_lock, iflags);
 ndlp->nlp_flag |= NLP_IN_DEV_LOSS;
 spin_unlock_irqrestore(shost->host_lock, iflags);




 evtp->evt_arg1 = lpfc_nlp_get(ndlp);

 spin_lock_irqsave(&phba->hbalock, iflags);
 if (evtp->evt_arg1) {
  evtp->evt = LPFC_EVT_DEV_LOSS;
  list_add_tail(&evtp->evt_listp, &phba->work_list);
  lpfc_worker_wake_up(phba);
 }
 spin_unlock_irqrestore(&phba->hbalock, iflags);

 return;
}
