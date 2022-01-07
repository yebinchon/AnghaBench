
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pmcraid_instance {scalar_t__ ioa_state; int ioa_bringdown; int force_ioa_reset; TYPE_1__* host; scalar_t__ ioa_reset_in_progress; int reset_wait_q; struct pmcraid_cmd* reset_cmd; scalar_t__ ioa_shutdown_type; } ;
struct pmcraid_cmd {int dummy; } ;
struct TYPE_3__ {int host_lock; } ;


 scalar_t__ IOA_STATE_DEAD ;
 scalar_t__ SHUTDOWN_NORMAL ;
 int pmcraid_err (char*) ;
 struct pmcraid_cmd* pmcraid_get_free_cmd (struct pmcraid_instance*) ;
 int pmcraid_info (char*) ;
 int pmcraid_ioa_reset (struct pmcraid_cmd*) ;
 int scsi_block_requests (TYPE_1__*) ;
 int scsi_unblock_requests (TYPE_1__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int pmcraid_reset_reload(
 struct pmcraid_instance *pinstance,
 u8 shutdown_type,
 u8 target_state
)
{
 struct pmcraid_cmd *reset_cmd = ((void*)0);
 unsigned long lock_flags;
 int reset = 1;

 spin_lock_irqsave(pinstance->host->host_lock, lock_flags);

 if (pinstance->ioa_reset_in_progress) {
  pmcraid_info("reset_reload: reset is already in progress\n");

  spin_unlock_irqrestore(pinstance->host->host_lock, lock_flags);

  wait_event(pinstance->reset_wait_q,
      !pinstance->ioa_reset_in_progress);

  spin_lock_irqsave(pinstance->host->host_lock, lock_flags);

  if (pinstance->ioa_state == IOA_STATE_DEAD) {
   pmcraid_info("reset_reload: IOA is dead\n");
   goto out_unlock;
  }

  if (pinstance->ioa_state == target_state) {
   reset = 0;
   goto out_unlock;
  }
 }

 pmcraid_info("reset_reload: proceeding with reset\n");
 scsi_block_requests(pinstance->host);
 reset_cmd = pmcraid_get_free_cmd(pinstance);
 if (reset_cmd == ((void*)0)) {
  pmcraid_err("no free cmnd for reset_reload\n");
  goto out_unlock;
 }

 if (shutdown_type == SHUTDOWN_NORMAL)
  pinstance->ioa_bringdown = 1;

 pinstance->ioa_shutdown_type = shutdown_type;
 pinstance->reset_cmd = reset_cmd;
 pinstance->force_ioa_reset = reset;
 pmcraid_info("reset_reload: initiating reset\n");
 pmcraid_ioa_reset(reset_cmd);
 spin_unlock_irqrestore(pinstance->host->host_lock, lock_flags);
 pmcraid_info("reset_reload: waiting for reset to complete\n");
 wait_event(pinstance->reset_wait_q,
     !pinstance->ioa_reset_in_progress);

 pmcraid_info("reset_reload: reset is complete !!\n");
 scsi_unblock_requests(pinstance->host);
 return pinstance->ioa_state != target_state;

out_unlock:
 spin_unlock_irqrestore(pinstance->host->host_lock, lock_flags);
 return reset;
}
