
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrb_hba {int queue_lock; int (* qcmd ) (struct myrb_hba*,struct myrb_cmdblk*) ;} ;
struct myrb_cmdblk {unsigned short status; int * completion; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int WARN_ON (int ) ;
 int cmpl ;
 int in_interrupt () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct myrb_hba*,struct myrb_cmdblk*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static unsigned short myrb_exec_cmd(struct myrb_hba *cb,
  struct myrb_cmdblk *cmd_blk)
{
 DECLARE_COMPLETION_ONSTACK(cmpl);
 unsigned long flags;

 cmd_blk->completion = &cmpl;

 spin_lock_irqsave(&cb->queue_lock, flags);
 cb->qcmd(cb, cmd_blk);
 spin_unlock_irqrestore(&cb->queue_lock, flags);

 WARN_ON(in_interrupt());
 wait_for_completion(&cmpl);
 return cmd_blk->status;
}
