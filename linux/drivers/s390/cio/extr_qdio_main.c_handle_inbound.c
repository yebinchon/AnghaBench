
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ack_count; int ack_start; scalar_t__ polling; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {int nr_buf_used; TYPE_2__ u; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 int SLSB_CU_INPUT_EMPTY ;
 void* add_buf (int,int) ;
 int atomic_add (int,int *) ;
 scalar_t__ buf_in_between (int,int,int) ;
 int inbound_call ;
 scalar_t__ is_qebsm (struct qdio_q*) ;
 scalar_t__ need_siga_in (struct qdio_q*) ;
 int qdio_siga_input (struct qdio_q*) ;
 int qperf_inc (struct qdio_q*,int ) ;
 int set_buf_states (struct qdio_q*,int,int ,int) ;
 int sub_buf (int,int) ;

__attribute__((used)) static int handle_inbound(struct qdio_q *q, unsigned int callflags,
     int bufnr, int count)
{
 int diff;

 qperf_inc(q, inbound_call);

 if (!q->u.in.polling)
  goto set;


 if (count == QDIO_MAX_BUFFERS_PER_Q) {

  q->u.in.polling = 0;
  q->u.in.ack_count = 0;
  goto set;
 } else if (buf_in_between(q->u.in.ack_start, bufnr, count)) {
  if (is_qebsm(q)) {

   diff = add_buf(bufnr, count);
   diff = sub_buf(diff, q->u.in.ack_start);
   q->u.in.ack_count -= diff;
   if (q->u.in.ack_count <= 0) {
    q->u.in.polling = 0;
    q->u.in.ack_count = 0;
    goto set;
   }
   q->u.in.ack_start = add_buf(q->u.in.ack_start, diff);
  }
  else

   q->u.in.polling = 0;
 }

set:
 count = set_buf_states(q, bufnr, SLSB_CU_INPUT_EMPTY, count);
 atomic_add(count, &q->nr_buf_used);

 if (need_siga_in(q))
  return qdio_siga_input(q);

 return 0;
}
