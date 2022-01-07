
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct qaob** aobs; TYPE_1__* sbal_state; } ;
struct TYPE_6__ {TYPE_2__ out; } ;
struct qdio_q {TYPE_3__ u; } ;
struct qaob {int dummy; } ;
struct TYPE_4__ {int flags; } ;


 int QDIO_OUTBUF_STATE_FLAG_PENDING ;
 unsigned char SLSB_P_OUTPUT_PENDING ;
 int get_buf_state (struct qdio_q*,int,unsigned char*,int ) ;
 int next_buf (int) ;

__attribute__((used)) static inline void qdio_handle_aobs(struct qdio_q *q, int start, int count)
{
 unsigned char state = 0;
 int j, b = start;

 for (j = 0; j < count; ++j) {
  get_buf_state(q, b, &state, 0);
  if (state == SLSB_P_OUTPUT_PENDING) {
   struct qaob *aob = q->u.out.aobs[b];
   if (aob == ((void*)0))
    continue;

   q->u.out.sbal_state[b].flags |=
    QDIO_OUTBUF_STATE_FLAG_PENDING;
   q->u.out.aobs[b] = ((void*)0);
  }
  b = next_buf(b);
 }
}
