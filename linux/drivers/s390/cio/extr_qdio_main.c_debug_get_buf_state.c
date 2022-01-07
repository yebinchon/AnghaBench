
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int dummy; } ;


 int get_buf_state (struct qdio_q*,unsigned int,unsigned char*,int ) ;
 scalar_t__ need_siga_sync (struct qdio_q*) ;
 int qdio_siga_sync_q (struct qdio_q*) ;

int debug_get_buf_state(struct qdio_q *q, unsigned int bufnr,
   unsigned char *state)
{
 if (need_siga_sync(q))
  qdio_siga_sync_q(q);
 return get_buf_state(q, bufnr, state, 0);
}
