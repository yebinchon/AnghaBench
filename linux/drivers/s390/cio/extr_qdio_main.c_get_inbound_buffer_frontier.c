
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_sbal_nop; } ;
struct qdio_q {int nr; TYPE_2__* irq_ptr; TYPE_1__ q_stats; int nr_buf_used; int timestamp; } ;
struct TYPE_4__ {int perf_stat_enabled; } ;


 int DBF_DEV_EVENT (int ,TYPE_2__*,char*,int ,unsigned int) ;
 int DBF_INFO ;
 int QDIO_MAX_BUFFERS_MASK ;





 int WARN_ON_ONCE (int) ;
 int account_sbals (struct qdio_q*,int) ;
 int account_sbals_error (struct qdio_q*,int) ;
 int atomic_read (int *) ;
 int atomic_sub_return (int,int *) ;
 int get_buf_states (struct qdio_q*,unsigned int,unsigned char*,int,int,int ) ;
 int get_tod_clock_fast () ;
 int inbound_primed (struct qdio_q*,unsigned int,int) ;
 int inbound_queue_full ;
 int min (int ,int ) ;
 int process_buffer_error (struct qdio_q*,unsigned int,int) ;
 int qperf_inc (struct qdio_q*,int ) ;

__attribute__((used)) static int get_inbound_buffer_frontier(struct qdio_q *q, unsigned int start)
{
 unsigned char state = 0;
 int count;

 q->timestamp = get_tod_clock_fast();





 count = min(atomic_read(&q->nr_buf_used), QDIO_MAX_BUFFERS_MASK);
 if (!count)
  return 0;





 count = get_buf_states(q, start, &state, count, 1, 0);
 if (!count)
  return 0;

 switch (state) {
 case 128:
  inbound_primed(q, start, count);
  if (atomic_sub_return(count, &q->nr_buf_used) == 0)
   qperf_inc(q, inbound_queue_full);
  if (q->irq_ptr->perf_stat_enabled)
   account_sbals(q, count);
  return count;
 case 130:
  process_buffer_error(q, start, count);
  if (atomic_sub_return(count, &q->nr_buf_used) == 0)
   qperf_inc(q, inbound_queue_full);
  if (q->irq_ptr->perf_stat_enabled)
   account_sbals_error(q, count);
  return count;
 case 132:
 case 129:
 case 131:
  if (q->irq_ptr->perf_stat_enabled)
   q->q_stats.nr_sbal_nop++;
  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "in nop:%1d %#02x",
         q->nr, start);
  return 0;
 default:
  WARN_ON_ONCE(1);
  return 0;
 }
}
