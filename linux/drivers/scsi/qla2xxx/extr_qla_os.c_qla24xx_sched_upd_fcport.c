
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ disc_state; int reg_work; TYPE_1__* vha; int next_disc_state; scalar_t__ sec_since_registration; int jiffies_at_registration; int d_id; } ;
typedef TYPE_2__ fc_port_t ;
struct TYPE_4__ {int work_lock; } ;


 int DSC_DELETED ;
 scalar_t__ DSC_UPD_FCPORT ;
 scalar_t__ IS_SW_RESV_ADDR (int ) ;
 int jiffies ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_unbound_wq ;

void qla24xx_sched_upd_fcport(fc_port_t *fcport)
{
 unsigned long flags;

 if (IS_SW_RESV_ADDR(fcport->d_id))
  return;

 spin_lock_irqsave(&fcport->vha->work_lock, flags);
 if (fcport->disc_state == DSC_UPD_FCPORT) {
  spin_unlock_irqrestore(&fcport->vha->work_lock, flags);
  return;
 }
 fcport->jiffies_at_registration = jiffies;
 fcport->sec_since_registration = 0;
 fcport->next_disc_state = DSC_DELETED;
 fcport->disc_state = DSC_UPD_FCPORT;
 spin_unlock_irqrestore(&fcport->vha->work_lock, flags);

 queue_work(system_unbound_wq, &fcport->reg_work);
}
