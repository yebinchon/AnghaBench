
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_sbal_error; int nr_sbal_total; } ;
struct qdio_q {TYPE_1__ q_stats; } ;



__attribute__((used)) static inline void account_sbals_error(struct qdio_q *q, int count)
{
 q->q_stats.nr_sbal_error += count;
 q->q_stats.nr_sbal_total += count;
}
