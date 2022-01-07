
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knav_queue_inst {unsigned int id; TYPE_2__* qmgr; int desc_count; } ;
struct knav_queue {struct knav_queue_inst* inst; } ;
struct TYPE_4__ {unsigned int start_queue; TYPE_1__* reg_push; } ;
struct TYPE_3__ {int ptr_size_thresh; } ;


 int atomic_set (int *,int ) ;
 int writel_relaxed (int ,int *) ;

__attribute__((used)) static int knav_queue_flush(struct knav_queue *qh)
{
 struct knav_queue_inst *inst = qh->inst;
 unsigned id = inst->id - inst->qmgr->start_queue;

 atomic_set(&inst->desc_count, 0);
 writel_relaxed(0, &inst->qmgr->reg_push[id].ptr_size_thresh);
 return 0;
}
