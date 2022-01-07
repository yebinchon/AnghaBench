
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * val; } ;
struct qdio_q {TYPE_1__ slsb; } ;


 scalar_t__ is_qebsm (struct qdio_q*) ;
 int next_buf (int) ;
 int qdio_do_sqbs (struct qdio_q*,unsigned char,int,int) ;
 int xchg (int *,unsigned char) ;

__attribute__((used)) static inline int set_buf_states(struct qdio_q *q, int bufnr,
     unsigned char state, int count)
{
 int i;

 if (is_qebsm(q))
  return qdio_do_sqbs(q, state, bufnr, count);

 for (i = 0; i < count; i++) {
  xchg(&q->slsb.val[bufnr], state);
  bufnr = next_buf(bufnr);
 }
 return count;
}
