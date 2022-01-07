
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct dasd_block {int request_queue; TYPE_1__* base; } ;
struct TYPE_2__ {int cdev; } ;


 int DASD_STOPPED_PENDING ;
 int blk_mq_run_hw_queues (int ,int) ;
 int dasd_device_remove_stop_bits (TYPE_1__*,int ) ;
 int dasd_schedule_block_bh (struct dasd_block*) ;
 struct dasd_block* from_timer (struct dasd_block*,struct timer_list*,int ) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int timer ;

__attribute__((used)) static void dasd_block_timeout(struct timer_list *t)
{
 unsigned long flags;
 struct dasd_block *block;

 block = from_timer(block, t, timer);
 spin_lock_irqsave(get_ccwdev_lock(block->base->cdev), flags);

 dasd_device_remove_stop_bits(block->base, DASD_STOPPED_PENDING);
 spin_unlock_irqrestore(get_ccwdev_lock(block->base->cdev), flags);
 dasd_schedule_block_bh(block);
 blk_mq_run_hw_queues(block->request_queue, 1);
}
