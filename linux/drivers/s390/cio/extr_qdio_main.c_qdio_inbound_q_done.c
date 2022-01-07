
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ timestamp; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {int irq_ptr; TYPE_2__ u; int nr_buf_used; } ;


 int DBF_DEV_EVENT (int ,int ,char*,unsigned int) ;
 int DBF_INFO ;
 scalar_t__ MACHINE_IS_VM ;
 scalar_t__ QDIO_INPUT_THRESHOLD ;
 unsigned char SLSB_P_INPUT_ERROR ;
 unsigned char SLSB_P_INPUT_PRIMED ;
 int atomic_read (int *) ;
 int get_buf_state (struct qdio_q*,unsigned int,unsigned char*,int ) ;
 scalar_t__ get_tod_clock_fast () ;
 scalar_t__ is_thinint_irq (int ) ;
 scalar_t__ need_siga_sync (struct qdio_q*) ;
 int qdio_siga_sync_q (struct qdio_q*) ;

__attribute__((used)) static inline int qdio_inbound_q_done(struct qdio_q *q, unsigned int start)
{
 unsigned char state = 0;

 if (!atomic_read(&q->nr_buf_used))
  return 1;

 if (need_siga_sync(q))
  qdio_siga_sync_q(q);
 get_buf_state(q, start, &state, 0);

 if (state == SLSB_P_INPUT_PRIMED || state == SLSB_P_INPUT_ERROR)

  return 0;

 if (is_thinint_irq(q->irq_ptr))
  return 1;


 if (MACHINE_IS_VM)
  return 1;





 if (get_tod_clock_fast() > q->u.in.timestamp + QDIO_INPUT_THRESHOLD) {
  DBF_DEV_EVENT(DBF_INFO, q->irq_ptr, "in done:%02x", start);
  return 1;
 } else
  return 0;
}
