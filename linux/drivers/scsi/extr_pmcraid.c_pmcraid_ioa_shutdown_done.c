
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcraid_instance {TYPE_1__* host; } ;
struct pmcraid_cmd {struct pmcraid_instance* drv_inst; } ;
struct TYPE_2__ {int host_lock; } ;


 int pmcraid_ioa_reset (struct pmcraid_cmd*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void pmcraid_ioa_shutdown_done(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 unsigned long lock_flags;

 spin_lock_irqsave(pinstance->host->host_lock, lock_flags);
 pmcraid_ioa_reset(cmd);
 spin_unlock_irqrestore(pinstance->host->host_lock, lock_flags);
}
