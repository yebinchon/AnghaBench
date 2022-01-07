
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct dasd_block {TYPE_1__ profile; int timer; int queue_lock; int ccw_queue; int tasklet; int tasklet_scheduled; int open_count; } ;


 int ENOMEM ;
 struct dasd_block* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int dasd_block_tasklet ;
 int dasd_block_timeout ;
 struct dasd_block* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

struct dasd_block *dasd_alloc_block(void)
{
 struct dasd_block *block;

 block = kzalloc(sizeof(*block), GFP_ATOMIC);
 if (!block)
  return ERR_PTR(-ENOMEM);

 atomic_set(&block->open_count, -1);

 atomic_set(&block->tasklet_scheduled, 0);
 tasklet_init(&block->tasklet, dasd_block_tasklet,
       (unsigned long) block);
 INIT_LIST_HEAD(&block->ccw_queue);
 spin_lock_init(&block->queue_lock);
 timer_setup(&block->timer, dasd_block_timeout, 0);
 spin_lock_init(&block->profile.lock);

 return block;
}
