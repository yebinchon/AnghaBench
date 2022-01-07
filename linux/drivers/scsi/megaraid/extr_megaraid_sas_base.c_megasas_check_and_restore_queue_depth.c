
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {int flag; scalar_t__ throttlequeuedepth; TYPE_1__* host; int cur_can_queue; int fw_outstanding; scalar_t__ last_time; } ;
struct TYPE_2__ {int host_lock; int can_queue; } ;


 int HZ ;
 int MEGASAS_FW_BUSY ;
 scalar_t__ atomic_read (int *) ;
 int jiffies ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ time_after (int ,scalar_t__) ;

void
megasas_check_and_restore_queue_depth(struct megasas_instance *instance)
{
 unsigned long flags;

 if (instance->flag & MEGASAS_FW_BUSY
     && time_after(jiffies, instance->last_time + 5 * HZ)
     && atomic_read(&instance->fw_outstanding) <
     instance->throttlequeuedepth + 1) {

  spin_lock_irqsave(instance->host->host_lock, flags);
  instance->flag &= ~MEGASAS_FW_BUSY;

  instance->host->can_queue = instance->cur_can_queue;
  spin_unlock_irqrestore(instance->host->host_lock, flags);
 }
}
