
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {struct nvmefc_fcp_req* desc; } ;
struct TYPE_12__ {TYPE_2__ nvme; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct scsi_qla_host {int dummy; } ;
struct qla_qpair {int fw_started; } ;
struct qla_nvme_rport {TYPE_5__* fcport; } ;
struct nvmefc_fcp_req {struct nvme_private* private; } ;
struct nvme_private {TYPE_4__* sp; int cmd_lock; } ;
struct nvme_fc_remote_port {struct qla_nvme_rport* private; } ;
struct nvme_fc_local_port {int dummy; } ;
struct TYPE_10__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_13__ {char* name; struct qla_qpair* qpair; int * priv; int nvme_ls_waitq; TYPE_1__ u; struct scsi_qla_host* vha; int put_fn; int done; int type; int cmd_kref; } ;
typedef TYPE_4__ srb_t ;
struct TYPE_14__ {int nvme_flag; struct scsi_qla_host* vha; scalar_t__ deleted; } ;
typedef TYPE_5__ fc_port_t ;


 int EBUSY ;
 int ENODEV ;
 int GFP_ATOMIC ;
 int NVME_FLAG_RESETTING ;
 int QLA_SUCCESS ;
 int SRB_NVME_CMD ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int) ;
 int ql_log_warn ;
 int qla2x00_start_nvme_mq (TYPE_4__*) ;
 TYPE_4__* qla2xxx_get_qpair_sp (struct scsi_qla_host*,struct qla_qpair*,TYPE_5__*,int ) ;
 int qla2xxx_rel_qpair_sp (struct qla_qpair*,TYPE_4__*) ;
 int qla_nvme_release_fcp_cmd_kref ;
 int qla_nvme_sp_done ;
 int spin_lock_init (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int qla_nvme_post_cmd(struct nvme_fc_local_port *lport,
    struct nvme_fc_remote_port *rport, void *hw_queue_handle,
    struct nvmefc_fcp_req *fd)
{
 fc_port_t *fcport;
 struct srb_iocb *nvme;
 struct scsi_qla_host *vha;
 int rval = -ENODEV;
 srb_t *sp;
 struct qla_qpair *qpair = hw_queue_handle;
 struct nvme_private *priv = fd->private;
 struct qla_nvme_rport *qla_rport = rport->private;

 fcport = qla_rport->fcport;

 if (!qpair || !fcport || (qpair && !qpair->fw_started) ||
     (fcport && fcport->deleted))
  return rval;

 vha = fcport->vha;







 if (fcport->nvme_flag & NVME_FLAG_RESETTING)
  return -EBUSY;


 sp = qla2xxx_get_qpair_sp(vha, qpair, fcport, GFP_ATOMIC);
 if (!sp)
  return -EBUSY;

 init_waitqueue_head(&sp->nvme_ls_waitq);
 kref_init(&sp->cmd_kref);
 spin_lock_init(&priv->cmd_lock);
 sp->priv = (void *)priv;
 priv->sp = sp;
 sp->type = SRB_NVME_CMD;
 sp->name = "nvme_cmd";
 sp->done = qla_nvme_sp_done;
 sp->put_fn = qla_nvme_release_fcp_cmd_kref;
 sp->qpair = qpair;
 sp->vha = vha;
 nvme = &sp->u.iocb_cmd;
 nvme->u.nvme.desc = fd;

 rval = qla2x00_start_nvme_mq(sp);
 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x212d,
      "qla2x00_start_nvme_mq failed = %d\n", rval);
  wake_up(&sp->nvme_ls_waitq);
  sp->priv = ((void*)0);
  priv->sp = ((void*)0);
  qla2xxx_rel_qpair_sp(sp->qpair, sp);
 }

 return rval;
}
