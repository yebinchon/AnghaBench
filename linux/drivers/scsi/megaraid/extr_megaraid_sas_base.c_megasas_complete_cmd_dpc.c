
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct megasas_instance {size_t max_fw_cmds; int completion_lock; int * consumer; struct megasas_cmd** cmd_list; TYPE_1__* pdev; int * reply_queue; int * producer; int adprecovery; } ;
struct megasas_cmd {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int BUG () ;
 int DID_OK ;
 scalar_t__ MEGASAS_HW_CRITICAL_ERROR ;
 scalar_t__ atomic_read (int *) ;
 int cpu_to_le32 (size_t) ;
 int dev_err (int *,char*,size_t) ;
 size_t le32_to_cpu (int ) ;
 int megasas_check_and_restore_queue_depth (struct megasas_instance*) ;
 int megasas_complete_cmd (struct megasas_instance*,struct megasas_cmd*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void megasas_complete_cmd_dpc(unsigned long instance_addr)
{
 u32 producer;
 u32 consumer;
 u32 context;
 struct megasas_cmd *cmd;
 struct megasas_instance *instance =
    (struct megasas_instance *)instance_addr;
 unsigned long flags;


 if (atomic_read(&instance->adprecovery) == MEGASAS_HW_CRITICAL_ERROR)
  return;

 spin_lock_irqsave(&instance->completion_lock, flags);

 producer = le32_to_cpu(*instance->producer);
 consumer = le32_to_cpu(*instance->consumer);

 while (consumer != producer) {
  context = le32_to_cpu(instance->reply_queue[consumer]);
  if (context >= instance->max_fw_cmds) {
   dev_err(&instance->pdev->dev, "Unexpected context value %x\n",
    context);
   BUG();
  }

  cmd = instance->cmd_list[context];

  megasas_complete_cmd(instance, cmd, DID_OK);

  consumer++;
  if (consumer == (instance->max_fw_cmds + 1)) {
   consumer = 0;
  }
 }

 *instance->consumer = cpu_to_le32(producer);

 spin_unlock_irqrestore(&instance->completion_lock, flags);




 megasas_check_and_restore_queue_depth(instance);
}
