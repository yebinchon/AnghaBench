
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ use_cq; } ;
struct TYPE_4__ {TYPE_1__ out; } ;
struct qdio_q {TYPE_2__ u; int nr; int irq_ptr; } ;


 int DBF_DEV_EVENT (int ,int ,char*,int ) ;
 int DBF_INFO ;
 int get_outbound_buffer_frontier (struct qdio_q*,unsigned int) ;
 int qdio_handle_aobs (struct qdio_q*,unsigned int,int) ;

__attribute__((used)) static inline int qdio_outbound_q_moved(struct qdio_q *q, unsigned int start)
{
 int count;

 count = get_outbound_buffer_frontier(q, start);

 if (count) {
  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "out moved:%1d", q->nr);
  if (q->u.out.use_cq)
   qdio_handle_aobs(q, start, count);
 }

 return count;
}
