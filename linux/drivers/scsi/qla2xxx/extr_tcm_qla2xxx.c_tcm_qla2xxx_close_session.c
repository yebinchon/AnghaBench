
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_session {struct fc_port* fabric_sess_ptr; } ;
struct scsi_qla_host {TYPE_2__* hw; } ;
struct fc_port {struct scsi_qla_host* vha; } ;
struct TYPE_3__ {int sess_lock; } ;
struct TYPE_4__ {TYPE_1__ tgt; } ;


 int BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int target_sess_cmd_list_set_waiting (struct se_session*) ;
 int tcm_qla2xxx_put_sess (struct fc_port*) ;

__attribute__((used)) static void tcm_qla2xxx_close_session(struct se_session *se_sess)
{
 struct fc_port *sess = se_sess->fabric_sess_ptr;
 struct scsi_qla_host *vha;
 unsigned long flags;

 BUG_ON(!sess);
 vha = sess->vha;

 spin_lock_irqsave(&vha->hw->tgt.sess_lock, flags);
 target_sess_cmd_list_set_waiting(se_sess);
 spin_unlock_irqrestore(&vha->hw->tgt.sess_lock, flags);

 tcm_qla2xxx_put_sess(sess);
}
