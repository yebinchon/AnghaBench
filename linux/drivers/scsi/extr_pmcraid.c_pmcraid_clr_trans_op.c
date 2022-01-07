
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ioa_host_interrupt_clr_reg; int ioa_host_interrupt_mask_reg; } ;
struct pmcraid_instance {TYPE_1__* host; TYPE_3__* reset_cmd; TYPE_2__ int_regs; int interrupt_mode; } ;
struct TYPE_6__ {int (* cmd_done ) (TYPE_3__*) ;int timer; } ;
struct TYPE_4__ {int host_lock; } ;


 int INTRS_TRANSITION_TO_OPERATIONAL ;
 int del_timer (int *) ;
 int ioread32 (int ) ;
 int iowrite32 (int ,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void pmcraid_clr_trans_op(
 struct pmcraid_instance *pinstance
)
{
 unsigned long lock_flags;

 if (!pinstance->interrupt_mode) {
  iowrite32(INTRS_TRANSITION_TO_OPERATIONAL,
   pinstance->int_regs.ioa_host_interrupt_mask_reg);
  ioread32(pinstance->int_regs.ioa_host_interrupt_mask_reg);
  iowrite32(INTRS_TRANSITION_TO_OPERATIONAL,
   pinstance->int_regs.ioa_host_interrupt_clr_reg);
  ioread32(pinstance->int_regs.ioa_host_interrupt_clr_reg);
 }

 if (pinstance->reset_cmd != ((void*)0)) {
  del_timer(&pinstance->reset_cmd->timer);
  spin_lock_irqsave(
   pinstance->host->host_lock, lock_flags);
  pinstance->reset_cmd->cmd_done(pinstance->reset_cmd);
  spin_unlock_irqrestore(
   pinstance->host->host_lock, lock_flags);
 }
}
