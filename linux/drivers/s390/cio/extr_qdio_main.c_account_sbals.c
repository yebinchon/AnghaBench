
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nr_sbal_total; int * nr_sbals; } ;
struct qdio_q {TYPE_1__ q_stats; } ;


 unsigned int QDIO_MAX_BUFFERS_MASK ;
 int ilog2 (unsigned int) ;

__attribute__((used)) static inline void account_sbals(struct qdio_q *q, unsigned int count)
{
 int pos;

 q->q_stats.nr_sbal_total += count;
 if (count == QDIO_MAX_BUFFERS_MASK) {
  q->q_stats.nr_sbals[7]++;
  return;
 }
 pos = ilog2(count);
 q->q_stats.nr_sbals[pos]++;
}
