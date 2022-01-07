
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_queue_inst {int desc_count; } ;
struct knav_queue {TYPE_1__* reg_peek; struct knav_queue_inst* inst; } ;
struct TYPE_2__ {int entry_count; } ;


 int atomic_read (int *) ;
 int readl_relaxed (int *) ;

__attribute__((used)) static int knav_queue_get_count(void *qhandle)
{
 struct knav_queue *qh = qhandle;
 struct knav_queue_inst *inst = qh->inst;

 return readl_relaxed(&qh->reg_peek[0].entry_count) +
  atomic_read(&inst->desc_count);
}
