
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_q {int nr; TYPE_1__* irq_ptr; } ;
struct TYPE_2__ {int nr_output_qs; } ;



__attribute__((used)) static inline int multicast_outbound(struct qdio_q *q)
{
 return (q->irq_ptr->nr_output_qs > 1) &&
        (q->nr == q->irq_ptr->nr_output_qs - 1);
}
