
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pci_out_enabled; int timer; scalar_t__ use_cq; } ;
struct TYPE_5__ {TYPE_3__ out; } ;
struct qdio_q {TYPE_2__ u; TYPE_1__* irq_ptr; int nr_buf_used; } ;
struct TYPE_4__ {unsigned int scan_threshold; scalar_t__ state; } ;


 scalar_t__ HZ ;
 unsigned int QDIO_FLAG_PCI_OUT ;
 scalar_t__ QDIO_IQDIO_QFMT ;
 scalar_t__ QDIO_IRQ_STATE_ACTIVE ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 unsigned char SLSB_CU_OUTPUT_PRIMED ;
 int WARN_ON_ONCE (int) ;
 int atomic_add_return (int,int *) ;
 int fast_requeue ;
 scalar_t__ get_buf_state (struct qdio_q*,int ,unsigned char*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ likely (int) ;
 int mod_timer (int *,scalar_t__) ;
 int multicast_outbound (struct qdio_q*) ;
 scalar_t__ need_siga_sync (struct qdio_q*) ;
 int outbound_call ;
 int outbound_queue_full ;
 int pci_request_int ;
 int prev_buf (int) ;
 unsigned long qdio_aob_for_buffer (TYPE_3__*,int) ;
 int qdio_kick_outbound_q (struct qdio_q*,unsigned long) ;
 int qdio_siga_sync_q (struct qdio_q*) ;
 int qdio_tasklet_schedule (struct qdio_q*) ;
 int qperf_inc (struct qdio_q*,int ) ;
 scalar_t__ queue_type (struct qdio_q*) ;
 int set_buf_states (struct qdio_q*,int,unsigned char,int) ;
 int timer_pending (int *) ;

__attribute__((used)) static int handle_outbound(struct qdio_q *q, unsigned int callflags,
      int bufnr, int count)
{
 const unsigned int scan_threshold = q->irq_ptr->scan_threshold;
 unsigned char state = 0;
 int used, rc = 0;

 qperf_inc(q, outbound_call);

 count = set_buf_states(q, bufnr, SLSB_CU_OUTPUT_PRIMED, count);
 used = atomic_add_return(count, &q->nr_buf_used);

 if (used == QDIO_MAX_BUFFERS_PER_Q)
  qperf_inc(q, outbound_queue_full);

 if (callflags & QDIO_FLAG_PCI_OUT) {
  q->u.out.pci_out_enabled = 1;
  qperf_inc(q, pci_request_int);
 } else
  q->u.out.pci_out_enabled = 0;

 if (queue_type(q) == QDIO_IQDIO_QFMT) {
  unsigned long phys_aob = 0;


  WARN_ON_ONCE(count > 1 && !multicast_outbound(q));

  if (q->u.out.use_cq)
   phys_aob = qdio_aob_for_buffer(&q->u.out, bufnr);

  rc = qdio_kick_outbound_q(q, phys_aob);
 } else if (need_siga_sync(q)) {
  rc = qdio_siga_sync_q(q);
 } else if (count < QDIO_MAX_BUFFERS_PER_Q &&
     get_buf_state(q, prev_buf(bufnr), &state, 0) > 0 &&
     state == SLSB_CU_OUTPUT_PRIMED) {

  qperf_inc(q, fast_requeue);
 } else {
  rc = qdio_kick_outbound_q(q, 0);
 }


 if (!scan_threshold)
  return rc;


 if (used >= scan_threshold || rc)
  qdio_tasklet_schedule(q);
 else

  if (!timer_pending(&q->u.out.timer) &&
      likely(q->irq_ptr->state == QDIO_IRQ_STATE_ACTIVE))
   mod_timer(&q->u.out.timer, jiffies + HZ);
 return rc;
}
