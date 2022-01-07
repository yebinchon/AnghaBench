
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* val; } ;
struct qdio_q {TYPE_1__ slsb; } ;


 unsigned char SLSB_OWNER_CU ;
 unsigned char SLSB_P_OUTPUT_EMPTY ;
 unsigned char SLSB_P_OUTPUT_PENDING ;
 scalar_t__ is_qebsm (struct qdio_q*) ;
 unsigned int next_buf (unsigned int) ;
 int qdio_do_eqbs (struct qdio_q*,unsigned char*,unsigned int,unsigned int,int) ;

__attribute__((used)) static inline int get_buf_states(struct qdio_q *q, unsigned int bufnr,
     unsigned char *state, unsigned int count,
     int auto_ack, int merge_pending)
{
 unsigned char __state = 0;
 int i = 1;

 if (is_qebsm(q))
  return qdio_do_eqbs(q, state, bufnr, count, auto_ack);


 __state = q->slsb.val[bufnr];


 if (__state & SLSB_OWNER_CU)
  goto out;

 if (merge_pending && __state == SLSB_P_OUTPUT_PENDING)
  __state = SLSB_P_OUTPUT_EMPTY;

 for (; i < count; i++) {
  bufnr = next_buf(bufnr);


  if (merge_pending &&
      q->slsb.val[bufnr] == SLSB_P_OUTPUT_PENDING &&
      __state == SLSB_P_OUTPUT_EMPTY)
   continue;


  if (q->slsb.val[bufnr] != __state)
   break;
 }

out:
 *state = __state;
 return i;
}
