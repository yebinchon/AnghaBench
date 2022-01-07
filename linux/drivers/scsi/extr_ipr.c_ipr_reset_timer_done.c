
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct ipr_ioa_cfg {TYPE_1__* host; struct ipr_cmnd* reset_cmd; } ;
struct ipr_cmnd {int (* done ) (struct ipr_cmnd*) ;int queue; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_2__ {int host_lock; } ;


 struct ipr_cmnd* from_timer (int ,struct timer_list*,int ) ;
 struct ipr_cmnd* ipr_cmd ;
 int list_del (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct ipr_cmnd*) ;
 int timer ;

__attribute__((used)) static void ipr_reset_timer_done(struct timer_list *t)
{
 struct ipr_cmnd *ipr_cmd = from_timer(ipr_cmd, t, timer);
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 unsigned long lock_flags = 0;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);

 if (ioa_cfg->reset_cmd == ipr_cmd) {
  list_del(&ipr_cmd->queue);
  ipr_cmd->done(ipr_cmd);
 }

 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
}
