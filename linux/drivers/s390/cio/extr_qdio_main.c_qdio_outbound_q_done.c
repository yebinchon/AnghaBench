
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int nr_buf_used; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline int qdio_outbound_q_done(struct qdio_q *q)
{
 return atomic_read(&q->nr_buf_used) == 0;
}
