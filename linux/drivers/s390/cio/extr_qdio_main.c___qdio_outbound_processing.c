
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timer; scalar_t__ pci_out_enabled; } ;
struct TYPE_5__ {TYPE_1__ out; } ;
struct qdio_q {unsigned int first_to_check; TYPE_2__ u; TYPE_3__* irq_ptr; int nr_buf_used; } ;
struct TYPE_6__ {scalar_t__ state; } ;


 int HZ ;
 scalar_t__ QDIO_IRQ_STATE_ACTIVE ;
 scalar_t__ QDIO_ZFCP_QFMT ;
 int WARN_ON_ONCE (int) ;
 unsigned int add_buf (unsigned int,int) ;
 scalar_t__ atomic_read (int *) ;
 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 scalar_t__ likely (int) ;
 int mod_timer (int *,scalar_t__) ;
 int pci_out_supported (TYPE_3__*) ;
 int qdio_kick_handler (struct qdio_q*,int) ;
 scalar_t__ qdio_outbound_q_done (struct qdio_q*) ;
 int qdio_outbound_q_moved (struct qdio_q*,unsigned int) ;
 int qdio_tasklet_schedule (struct qdio_q*) ;
 int qperf_inc (struct qdio_q*,int ) ;
 scalar_t__ queue_type (struct qdio_q*) ;
 int tasklet_outbound ;
 int timer_pending (int *) ;

__attribute__((used)) static void __qdio_outbound_processing(struct qdio_q *q)
{
 unsigned int start = q->first_to_check;
 int count;

 qperf_inc(q, tasklet_outbound);
 WARN_ON_ONCE(atomic_read(&q->nr_buf_used) < 0);

 count = qdio_outbound_q_moved(q, start);
 if (count) {
  q->first_to_check = add_buf(start, count);
  qdio_kick_handler(q, count);
 }

 if (queue_type(q) == QDIO_ZFCP_QFMT && !pci_out_supported(q->irq_ptr) &&
     !qdio_outbound_q_done(q))
  goto sched;

 if (q->u.out.pci_out_enabled)
  return;






 if (qdio_outbound_q_done(q))
  del_timer_sync(&q->u.out.timer);
 else
  if (!timer_pending(&q->u.out.timer) &&
      likely(q->irq_ptr->state == QDIO_IRQ_STATE_ACTIVE))
   mod_timer(&q->u.out.timer, jiffies + 10 * HZ);
 return;

sched:
 qdio_tasklet_schedule(q);
}
