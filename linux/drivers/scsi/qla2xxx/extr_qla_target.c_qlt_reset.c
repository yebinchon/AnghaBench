
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {TYPE_6__* qla_tgt; } ;
struct scsi_qla_host {int host_no; TYPE_3__ vha_tgt; struct qla_hw_data* hw; } ;
struct TYPE_11__ {int sess_lock; TYPE_4__* tgt_ops; } ;
struct qla_hw_data {TYPE_5__ tgt; } ;
struct TYPE_7__ {int nport_handle; } ;
struct TYPE_8__ {TYPE_1__ isp24; } ;
struct imm_ntfy_from_isp {TYPE_2__ u; } ;
struct fc_port {int port_name; } ;
struct TYPE_12__ {int tgt_global_resets_count; } ;
struct TYPE_10__ {struct fc_port* (* find_sess_by_loop_id ) (struct scsi_qla_host*,int) ;} ;


 int ESRCH ;
 int QLA24XX_MGMT_SEND_NACK ;
 int atomic_inc (int *) ;
 int le16_to_cpu (int ) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,struct fc_port*,...) ;
 int ql_dbg_tgt ;
 int qlt_clear_tgt_db (TYPE_6__*) ;
 int qlt_issue_task_mgmt (struct fc_port*,int ,int,void*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fc_port* stub1 (struct scsi_qla_host*,int) ;

__attribute__((used)) static int qlt_reset(struct scsi_qla_host *vha, void *iocb, int mcmd)
{
 struct qla_hw_data *ha = vha->hw;
 struct fc_port *sess = ((void*)0);
 uint16_t loop_id;
 int res = 0;
 struct imm_ntfy_from_isp *n = (struct imm_ntfy_from_isp *)iocb;
 unsigned long flags;

 loop_id = le16_to_cpu(n->u.isp24.nport_handle);
 if (loop_id == 0xFFFF) {

  atomic_inc(&vha->vha_tgt.qla_tgt->tgt_global_resets_count);
  spin_lock_irqsave(&ha->tgt.sess_lock, flags);
  qlt_clear_tgt_db(vha->vha_tgt.qla_tgt);
  spin_unlock_irqrestore(&ha->tgt.sess_lock, flags);
 } else {
  spin_lock_irqsave(&ha->tgt.sess_lock, flags);
  sess = ha->tgt.tgt_ops->find_sess_by_loop_id(vha, loop_id);
  spin_unlock_irqrestore(&ha->tgt.sess_lock, flags);
 }

 ql_dbg(ql_dbg_tgt, vha, 0xe000,
     "Using sess for qla_tgt_reset: %p\n", sess);
 if (!sess) {
  res = -ESRCH;
  return res;
 }

 ql_dbg(ql_dbg_tgt, vha, 0xe047,
     "scsi(%ld): resetting (session %p from port %8phC mcmd %x, "
     "loop_id %d)\n", vha->host_no, sess, sess->port_name,
     mcmd, loop_id);

 return qlt_issue_task_mgmt(sess, 0, mcmd, iocb, QLA24XX_MGMT_SEND_NACK);
}
