
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; int scan_work; int l; } ;
struct TYPE_4__ {int size; int * l; int ldma; int fcports; } ;
struct scsi_qla_host {struct qla_hw_data* hw; struct Scsi_Host* host; int host_str; int host_no; TYPE_2__ scan; TYPE_1__ gnl; int vref_waitq; int fcport_waitQ; int cmd_list_lock; int work_lock; int iocb_work; int gpnid_list; int qp_list; int plogi_ack_list; int logo_list; int qla_sess_op_cmd_list; int qla_cmd_list; int list; int work_list; int vp_fcports; int ql2xiniexchg; int ql2xexchoffld; int qlini_mode; } ;
struct scsi_host_template {int dummy; } ;
struct qla_hw_data {int max_loop_id; int max_fibre_devices; TYPE_3__* pdev; } ;
struct get_name_list_extended {int dummy; } ;
struct fab_scan_rp {int dummy; } ;
struct Scsi_Host {int host_no; } ;
typedef int scsi_qla_host_t ;
struct TYPE_6__ {int dev; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 char* QLA2XXX_DRIVER_NAME ;
 int dev_name (int *) ;
 int * dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int init_waitqueue_head (int *) ;
 int memset (struct scsi_qla_host*,int ,int) ;
 int ql2x_ini_mode ;
 int ql2xexchoffld ;
 int ql2xiniexchg ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,struct Scsi_Host*,struct qla_hw_data*,struct scsi_qla_host*,int ) ;
 int ql_dbg_init ;
 int ql_log (int ,struct scsi_qla_host*,int,char*) ;
 int ql_log_fatal ;
 int ql_log_pci (int ,TYPE_3__*,int,char*) ;
 int qla2x00_iocb_work_fn ;
 int qla_scan_work_fn ;
 struct Scsi_Host* scsi_host_alloc (struct scsi_host_template*,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 struct scsi_qla_host* shost_priv (struct Scsi_Host*) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,char*,int ) ;
 int vmalloc (int) ;

struct scsi_qla_host *qla2x00_create_host(struct scsi_host_template *sht,
      struct qla_hw_data *ha)
{
 struct Scsi_Host *host;
 struct scsi_qla_host *vha = ((void*)0);

 host = scsi_host_alloc(sht, sizeof(scsi_qla_host_t));
 if (!host) {
  ql_log_pci(ql_log_fatal, ha->pdev, 0x0107,
      "Failed to allocate host from the scsi layer, aborting.\n");
  return ((void*)0);
 }


 vha = shost_priv(host);
 memset(vha, 0, sizeof(scsi_qla_host_t));

 vha->host = host;
 vha->host_no = host->host_no;
 vha->hw = ha;

 vha->qlini_mode = ql2x_ini_mode;
 vha->ql2xexchoffld = ql2xexchoffld;
 vha->ql2xiniexchg = ql2xiniexchg;

 INIT_LIST_HEAD(&vha->vp_fcports);
 INIT_LIST_HEAD(&vha->work_list);
 INIT_LIST_HEAD(&vha->list);
 INIT_LIST_HEAD(&vha->qla_cmd_list);
 INIT_LIST_HEAD(&vha->qla_sess_op_cmd_list);
 INIT_LIST_HEAD(&vha->logo_list);
 INIT_LIST_HEAD(&vha->plogi_ack_list);
 INIT_LIST_HEAD(&vha->qp_list);
 INIT_LIST_HEAD(&vha->gnl.fcports);
 INIT_LIST_HEAD(&vha->gpnid_list);
 INIT_WORK(&vha->iocb_work, qla2x00_iocb_work_fn);

 spin_lock_init(&vha->work_lock);
 spin_lock_init(&vha->cmd_list_lock);
 init_waitqueue_head(&vha->fcport_waitQ);
 init_waitqueue_head(&vha->vref_waitq);

 vha->gnl.size = sizeof(struct get_name_list_extended) *
   (ha->max_loop_id + 1);
 vha->gnl.l = dma_alloc_coherent(&ha->pdev->dev,
     vha->gnl.size, &vha->gnl.ldma, GFP_KERNEL);
 if (!vha->gnl.l) {
  ql_log(ql_log_fatal, vha, 0xd04a,
      "Alloc failed for name list.\n");
  scsi_host_put(vha->host);
  return ((void*)0);
 }


 vha->scan.size = ha->max_fibre_devices * sizeof(struct fab_scan_rp);
 vha->scan.l = vmalloc(vha->scan.size);
 if (!vha->scan.l) {
  ql_log(ql_log_fatal, vha, 0xd04a,
      "Alloc failed for scan database.\n");
  dma_free_coherent(&ha->pdev->dev, vha->gnl.size,
      vha->gnl.l, vha->gnl.ldma);
  vha->gnl.l = ((void*)0);
  scsi_host_put(vha->host);
  return ((void*)0);
 }
 INIT_DELAYED_WORK(&vha->scan.scan_work, qla_scan_work_fn);

 sprintf(vha->host_str, "%s_%ld", QLA2XXX_DRIVER_NAME, vha->host_no);
 ql_dbg(ql_dbg_init, vha, 0x0041,
     "Allocated the host=%p hw=%p vha=%p dev_name=%s",
     vha->host, vha->hw, vha,
     dev_name(&(ha->pdev->dev)));

 return vha;
}
