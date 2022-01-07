
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nr_sbal_nop; } ;
struct TYPE_6__ {int use_cq; } ;
struct TYPE_7__ {TYPE_1__ out; } ;
struct qdio_q {int nr; TYPE_4__* irq_ptr; TYPE_3__ q_stats; int nr_buf_used; TYPE_2__ u; int timestamp; } ;
struct TYPE_9__ {int perf_stat_enabled; } ;


 int DBF_DEV_EVENT (int ,TYPE_4__*,char*,int ,...) ;
 int DBF_INFO ;
 scalar_t__ QDIO_IQDIO_QFMT ;






 int WARN_ON_ONCE (int) ;
 int account_sbals (struct qdio_q*,int) ;
 int account_sbals_error (struct qdio_q*,int) ;
 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int get_buf_states (struct qdio_q*,unsigned int,unsigned char*,int,int ,int ) ;
 int get_tod_clock_fast () ;
 scalar_t__ multicast_outbound (struct qdio_q*) ;
 scalar_t__ need_siga_sync (struct qdio_q*) ;
 int pci_out_supported (TYPE_4__*) ;
 int process_buffer_error (struct qdio_q*,unsigned int,int) ;
 int qdio_siga_sync_q (struct qdio_q*) ;
 scalar_t__ queue_type (struct qdio_q*) ;

__attribute__((used)) static int get_outbound_buffer_frontier(struct qdio_q *q, unsigned int start)
{
 unsigned char state = 0;
 int count;

 q->timestamp = get_tod_clock_fast();

 if (need_siga_sync(q))
  if (((queue_type(q) != QDIO_IQDIO_QFMT) &&
      !pci_out_supported(q->irq_ptr)) ||
      (queue_type(q) == QDIO_IQDIO_QFMT &&
      multicast_outbound(q)))
   qdio_siga_sync_q(q);

 count = atomic_read(&q->nr_buf_used);
 if (!count)
  return 0;

 count = get_buf_states(q, start, &state, count, 0, q->u.out.use_cq);
 if (!count)
  return 0;

 switch (state) {
 case 132:
 case 128:

  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr,
   "out empty:%1d %02x", q->nr, count);

  atomic_sub(count, &q->nr_buf_used);
  if (q->irq_ptr->perf_stat_enabled)
   account_sbals(q, count);
  return count;
 case 131:
  process_buffer_error(q, start, count);
  atomic_sub(count, &q->nr_buf_used);
  if (q->irq_ptr->perf_stat_enabled)
   account_sbals_error(q, count);
  return count;
 case 133:

  if (q->irq_ptr->perf_stat_enabled)
   q->q_stats.nr_sbal_nop++;
  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "out primed:%1d",
         q->nr);
  return 0;
 case 129:
 case 130:
  return 0;
 default:
  WARN_ON_ONCE(1);
  return 0;
 }
}
