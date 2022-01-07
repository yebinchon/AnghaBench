
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestamp; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {TYPE_2__ u; int irq_ptr; } ;


 scalar_t__ MACHINE_IS_LPAR ;
 int get_inbound_buffer_frontier (struct qdio_q*,unsigned int) ;
 int get_tod_clock () ;
 int is_thinint_irq (int ) ;

__attribute__((used)) static int qdio_inbound_q_moved(struct qdio_q *q, unsigned int start)
{
 int count;

 count = get_inbound_buffer_frontier(q, start);

 if (count && !is_thinint_irq(q->irq_ptr) && MACHINE_IS_LPAR)
  q->u.in.timestamp = get_tod_clock();

 return count;
}
