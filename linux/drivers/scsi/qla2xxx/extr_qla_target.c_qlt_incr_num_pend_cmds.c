
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stat_max_pend_cmds; } ;
struct scsi_qla_host {TYPE_3__* hw; TYPE_1__ qla_stats; } ;
struct TYPE_5__ {scalar_t__ num_pend_cmds; int q_full_lock; } ;
struct TYPE_6__ {TYPE_2__ tgt; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void qlt_incr_num_pend_cmds(struct scsi_qla_host *vha)
{
 unsigned long flags;

 spin_lock_irqsave(&vha->hw->tgt.q_full_lock, flags);

 vha->hw->tgt.num_pend_cmds++;
 if (vha->hw->tgt.num_pend_cmds > vha->qla_stats.stat_max_pend_cmds)
  vha->qla_stats.stat_max_pend_cmds =
   vha->hw->tgt.num_pend_cmds;
 spin_unlock_irqrestore(&vha->hw->tgt.q_full_lock, flags);
}
