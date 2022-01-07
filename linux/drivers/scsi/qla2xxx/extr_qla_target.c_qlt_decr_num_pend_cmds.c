
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {TYPE_2__* hw; } ;
struct TYPE_3__ {int q_full_lock; int num_pend_cmds; } ;
struct TYPE_4__ {TYPE_1__ tgt; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void qlt_decr_num_pend_cmds(struct scsi_qla_host *vha)
{
 unsigned long flags;

 spin_lock_irqsave(&vha->hw->tgt.q_full_lock, flags);
 vha->hw->tgt.num_pend_cmds--;
 spin_unlock_irqrestore(&vha->hw->tgt.q_full_lock, flags);
}
