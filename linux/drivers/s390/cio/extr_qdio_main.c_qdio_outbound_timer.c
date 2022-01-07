
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct qdio_q {int dummy; } ;
struct TYPE_3__ {int timer; } ;
struct TYPE_4__ {TYPE_1__ out; } ;


 struct qdio_q* from_timer (int ,struct timer_list*,int ) ;
 struct qdio_q* q ;
 int qdio_tasklet_schedule (struct qdio_q*) ;
 TYPE_2__ u ;

void qdio_outbound_timer(struct timer_list *t)
{
 struct qdio_q *q = from_timer(q, t, u.out.timer);

 qdio_tasklet_schedule(q);
}
