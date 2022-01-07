
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; scalar_t__ jiffies_at_alloc; } ;
struct megasas_instance {int flag; TYPE_3__* host; int last_time; int throttlequeuedepth; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_6__ {int host_lock; int can_queue; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int BLK_EH_DONE ;
 int BLK_EH_RESET_TIMER ;
 int HZ ;
 int MEGASAS_FW_BUSY ;
 int jiffies ;
 int scmd_timeout ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static enum
blk_eh_timer_return megasas_reset_timer(struct scsi_cmnd *scmd)
{
 struct megasas_instance *instance;
 unsigned long flags;

 if (time_after(jiffies, scmd->jiffies_at_alloc +
    (scmd_timeout * 2) * HZ)) {
  return BLK_EH_DONE;
 }

 instance = (struct megasas_instance *)scmd->device->host->hostdata;
 if (!(instance->flag & MEGASAS_FW_BUSY)) {

  spin_lock_irqsave(instance->host->host_lock, flags);

  instance->host->can_queue = instance->throttlequeuedepth;
  instance->last_time = jiffies;
  instance->flag |= MEGASAS_FW_BUSY;

  spin_unlock_irqrestore(instance->host->host_lock, flags);
 }
 return BLK_EH_RESET_TIMER;
}
