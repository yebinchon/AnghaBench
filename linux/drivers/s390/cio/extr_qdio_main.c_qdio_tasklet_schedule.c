
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_q {int tasklet; TYPE_1__* irq_ptr; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int EPERM ;
 scalar_t__ QDIO_IRQ_STATE_ACTIVE ;
 scalar_t__ likely (int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static inline int qdio_tasklet_schedule(struct qdio_q *q)
{
 if (likely(q->irq_ptr->state == QDIO_IRQ_STATE_ACTIVE)) {
  tasklet_schedule(&q->tasklet);
  return 0;
 }
 return -EPERM;
}
