
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipr_ioa_cfg {TYPE_1__* host; } ;
struct ipr_cmnd {int completion; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_2__ {int host_lock; } ;


 int init_completion (int *) ;
 int ipr_do_req (struct ipr_cmnd*,int ,void (*) (struct timer_list*),int ) ;
 int ipr_internal_cmd_done ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ipr_send_blocking_cmd(struct ipr_cmnd *ipr_cmd,
      void (*timeout_func) (struct timer_list *),
      u32 timeout)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;

 init_completion(&ipr_cmd->completion);
 ipr_do_req(ipr_cmd, ipr_internal_cmd_done, timeout_func, timeout);

 spin_unlock_irq(ioa_cfg->host->host_lock);
 wait_for_completion(&ipr_cmd->completion);
 spin_lock_irq(ioa_cfg->host->host_lock);
}
