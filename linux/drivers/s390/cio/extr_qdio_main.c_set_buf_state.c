
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int dummy; } ;


 int set_buf_states (struct qdio_q*,int,unsigned char,int) ;

__attribute__((used)) static inline int set_buf_state(struct qdio_q *q, int bufnr,
    unsigned char state)
{
 return set_buf_states(q, bufnr, state, 1);
}
