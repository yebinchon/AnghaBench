
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct qla_tgt* qla_tgt; } ;
struct scsi_qla_host {TYPE_3__* hw; TYPE_1__ vha_tgt; } ;
struct qla_tgt {scalar_t__ tgt_stop; } ;
struct fc_port {int generation; int local; int port_name; int se_sess; } ;
typedef struct fc_port fc_port_t ;
struct TYPE_5__ {int sess_lock; int tgt_ops; } ;
struct TYPE_6__ {TYPE_2__ tgt; } ;


 int ql_dbg (int ,struct scsi_qla_host*,int,char*,struct fc_port*,...) ;
 int ql_dbg_tgt_mgt ;
 int qlt_schedule_sess_for_deletion (struct fc_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
qlt_fc_port_deleted(struct scsi_qla_host *vha, fc_port_t *fcport, int max_gen)
{
 struct qla_tgt *tgt = vha->vha_tgt.qla_tgt;
 struct fc_port *sess = fcport;
 unsigned long flags;

 if (!vha->hw->tgt.tgt_ops)
  return;

 if (!tgt)
  return;

 spin_lock_irqsave(&vha->hw->tgt.sess_lock, flags);
 if (tgt->tgt_stop) {
  spin_unlock_irqrestore(&vha->hw->tgt.sess_lock, flags);
  return;
 }
 if (!sess->se_sess) {
  spin_unlock_irqrestore(&vha->hw->tgt.sess_lock, flags);
  return;
 }

 if (max_gen - sess->generation < 0) {
  spin_unlock_irqrestore(&vha->hw->tgt.sess_lock, flags);
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf092,
      "Ignoring stale deletion request for se_sess %p / sess %p"
      " for port %8phC, req_gen %d, sess_gen %d\n",
      sess->se_sess, sess, sess->port_name, max_gen,
      sess->generation);
  return;
 }

 ql_dbg(ql_dbg_tgt_mgt, vha, 0xf008, "qla_tgt_fc_port_deleted %p", sess);

 sess->local = 1;
 spin_unlock_irqrestore(&vha->hw->tgt.sess_lock, flags);
 qlt_schedule_sess_for_deletion(sess);
}
