
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrs_hba {int queue_lock; } ;
struct myrs_cmdblk {int * complete; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int WARN_ON (int ) ;
 int complete ;
 int in_interrupt () ;
 int myrs_qcmd (struct myrs_hba*,struct myrs_cmdblk*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void myrs_exec_cmd(struct myrs_hba *cs,
  struct myrs_cmdblk *cmd_blk)
{
 DECLARE_COMPLETION_ONSTACK(complete);
 unsigned long flags;

 cmd_blk->complete = &complete;
 spin_lock_irqsave(&cs->queue_lock, flags);
 myrs_qcmd(cs, cmd_blk);
 spin_unlock_irqrestore(&cs->queue_lock, flags);

 WARN_ON(in_interrupt());
 wait_for_completion(&complete);
}
