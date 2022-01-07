
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct qla_tgt_sess_op {int cmd_list; int atio; TYPE_3__* vha; } ;
struct qla_tgt {scalar_t__ tgt_stop; } ;
struct atio_from_isp {int dummy; } ;
struct TYPE_6__ {struct qla_tgt* qla_tgt; } ;
struct TYPE_8__ {TYPE_2__* hw; int unknown_atio_work; int cmd_list_lock; int unknown_atio_list; int vp_idx; TYPE_1__ vha_tgt; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_7__ {int base_qpair; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct qla_tgt_sess_op* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,struct atio_from_isp*,int) ;
 int ql_dbg (int ,TYPE_3__*,int,char*,int ) ;
 int ql_dbg_async ;
 int qlt_send_term_exchange (int ,int *,struct atio_from_isp*,int ,int ) ;
 int schedule_delayed_work (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qlt_queue_unknown_atio(scsi_qla_host_t *vha,
 struct atio_from_isp *atio, uint8_t ha_locked)
{
 struct qla_tgt_sess_op *u;
 struct qla_tgt *tgt = vha->vha_tgt.qla_tgt;
 unsigned long flags;

 if (tgt->tgt_stop) {
  ql_dbg(ql_dbg_async, vha, 0x502c,
      "qla_target(%d): dropping unknown ATIO_TYPE7, because tgt is being stopped",
      vha->vp_idx);
  goto out_term;
 }

 u = kzalloc(sizeof(*u), GFP_ATOMIC);
 if (u == ((void*)0))
  goto out_term;

 u->vha = vha;
 memcpy(&u->atio, atio, sizeof(*atio));
 INIT_LIST_HEAD(&u->cmd_list);

 spin_lock_irqsave(&vha->cmd_list_lock, flags);
 list_add_tail(&u->cmd_list, &vha->unknown_atio_list);
 spin_unlock_irqrestore(&vha->cmd_list_lock, flags);

 schedule_delayed_work(&vha->unknown_atio_work, 1);

out:
 return;

out_term:
 qlt_send_term_exchange(vha->hw->base_qpair, ((void*)0), atio, ha_locked, 0);
 goto out;
}
