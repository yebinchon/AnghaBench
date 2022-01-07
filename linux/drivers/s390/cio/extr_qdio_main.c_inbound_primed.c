
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int polling; int ack_count; unsigned int ack_start; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {TYPE_2__ u; int nr; int irq_ptr; } ;


 int DBF_DEV_EVENT (int ,int ,char*,int ,int) ;
 int DBF_INFO ;
 int SLSB_P_INPUT_ACK ;
 int SLSB_P_INPUT_NOT_INIT ;
 int add_buf (unsigned int,int) ;
 scalar_t__ is_qebsm (struct qdio_q*) ;
 int set_buf_state (struct qdio_q*,int,int ) ;
 int set_buf_states (struct qdio_q*,unsigned int,int ,int) ;

__attribute__((used)) static inline void inbound_primed(struct qdio_q *q, unsigned int start,
      int count)
{
 int new;

 DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "in prim:%1d %02x", q->nr, count);


 if (is_qebsm(q)) {
  if (!q->u.in.polling) {
   q->u.in.polling = 1;
   q->u.in.ack_count = count;
   q->u.in.ack_start = start;
   return;
  }


  set_buf_states(q, q->u.in.ack_start, SLSB_P_INPUT_NOT_INIT,
          q->u.in.ack_count);
  q->u.in.ack_count = count;
  q->u.in.ack_start = start;
  return;
 }





 new = add_buf(start, count - 1);
 if (q->u.in.polling) {

  set_buf_state(q, new, SLSB_P_INPUT_ACK);
  set_buf_state(q, q->u.in.ack_start, SLSB_P_INPUT_NOT_INIT);
 } else {
  q->u.in.polling = 1;
  set_buf_state(q, new, SLSB_P_INPUT_ACK);
 }

 q->u.in.ack_start = new;
 count--;
 if (!count)
  return;

 set_buf_states(q, start, SLSB_P_INPUT_NOT_INIT, count);
}
