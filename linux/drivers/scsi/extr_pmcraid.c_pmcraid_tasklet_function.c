
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmcraid_isr_param {int hrrq_id; struct pmcraid_instance* drv_inst; } ;
struct pmcraid_instance {int* host_toggle_bit; int ** hrrq_curr; TYPE_1__* host; int outstanding_cmds; int pending_pool_lock; struct pmcraid_cmd** cmd_list; int ** hrrq_start; int ** hrrq_end; int * hrrq_lock; } ;
struct pmcraid_cmd {int (* cmd_done ) (struct pmcraid_cmd*) ;int timer; int free_list; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int * host_lock; } ;


 int HRRQ_TOGGLE_BIT ;
 int PMCRAID_MAX_CMD ;
 int atomic_dec (int *) ;
 int del_timer (int *) ;
 int le32_to_cpu (int ) ;
 int list_del (int *) ;
 int pmcraid_err (char*,int) ;
 int pmcraid_ioa_reset (struct pmcraid_cmd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pmcraid_cmd*) ;
 int stub2 (struct pmcraid_cmd*) ;

__attribute__((used)) static void pmcraid_tasklet_function(unsigned long instance)
{
 struct pmcraid_isr_param *hrrq_vector;
 struct pmcraid_instance *pinstance;
 unsigned long hrrq_lock_flags;
 unsigned long pending_lock_flags;
 unsigned long host_lock_flags;
 spinlock_t *lockp;
 int id;
 u32 resp;

 hrrq_vector = (struct pmcraid_isr_param *)instance;
 pinstance = hrrq_vector->drv_inst;
 id = hrrq_vector->hrrq_id;
 lockp = &(pinstance->hrrq_lock[id]);







 spin_lock_irqsave(lockp, hrrq_lock_flags);

 resp = le32_to_cpu(*(pinstance->hrrq_curr[id]));

 while ((resp & HRRQ_TOGGLE_BIT) ==
  pinstance->host_toggle_bit[id]) {

  int cmd_index = resp >> 2;
  struct pmcraid_cmd *cmd = ((void*)0);

  if (pinstance->hrrq_curr[id] < pinstance->hrrq_end[id]) {
   pinstance->hrrq_curr[id]++;
  } else {
   pinstance->hrrq_curr[id] = pinstance->hrrq_start[id];
   pinstance->host_toggle_bit[id] ^= 1u;
  }

  if (cmd_index >= PMCRAID_MAX_CMD) {

   pmcraid_err("Invalid response handle %d\n", cmd_index);
   resp = le32_to_cpu(*(pinstance->hrrq_curr[id]));
   continue;
  }

  cmd = pinstance->cmd_list[cmd_index];
  spin_unlock_irqrestore(lockp, hrrq_lock_flags);

  spin_lock_irqsave(&pinstance->pending_pool_lock,
       pending_lock_flags);
  list_del(&cmd->free_list);
  spin_unlock_irqrestore(&pinstance->pending_pool_lock,
     pending_lock_flags);
  del_timer(&cmd->timer);
  atomic_dec(&pinstance->outstanding_cmds);

  if (cmd->cmd_done == pmcraid_ioa_reset) {
   spin_lock_irqsave(pinstance->host->host_lock,
       host_lock_flags);
   cmd->cmd_done(cmd);
   spin_unlock_irqrestore(pinstance->host->host_lock,
            host_lock_flags);
  } else if (cmd->cmd_done != ((void*)0)) {
   cmd->cmd_done(cmd);
  }

  spin_lock_irqsave(lockp, hrrq_lock_flags);
  resp = le32_to_cpu(*(pinstance->hrrq_curr[id]));
 }

 spin_unlock_irqrestore(lockp, hrrq_lock_flags);
}
