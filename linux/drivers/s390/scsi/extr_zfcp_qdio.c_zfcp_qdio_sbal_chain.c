
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio_req {scalar_t__ sbal_number; int sbtype; scalar_t__ sbale_curr; int sbal_last; int sbal_limit; } ;
struct zfcp_qdio {int dummy; } ;
struct qdio_buffer_element {int sflags; int eflags; } ;


 int BUG_ON (int) ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int SBAL_SFLAGS0_MORE_SBALS ;
 scalar_t__ ZFCP_QDIO_MAX_SBALS_PER_REQ ;
 struct qdio_buffer_element* zfcp_qdio_sbale_curr (struct zfcp_qdio*,struct zfcp_qdio_req*) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_req (struct zfcp_qdio*,struct zfcp_qdio_req*) ;

__attribute__((used)) static struct qdio_buffer_element *
zfcp_qdio_sbal_chain(struct zfcp_qdio *qdio, struct zfcp_qdio_req *q_req)
{
 struct qdio_buffer_element *sbale;


 sbale = zfcp_qdio_sbale_curr(qdio, q_req);
 sbale->eflags |= SBAL_EFLAGS_LAST_ENTRY;


 if (q_req->sbal_last == q_req->sbal_limit)
  return ((void*)0);


 sbale = zfcp_qdio_sbale_req(qdio, q_req);
 sbale->sflags |= SBAL_SFLAGS0_MORE_SBALS;


 q_req->sbal_last++;
 q_req->sbal_last %= QDIO_MAX_BUFFERS_PER_Q;


 q_req->sbal_number++;
 BUG_ON(q_req->sbal_number > ZFCP_QDIO_MAX_SBALS_PER_REQ);


 q_req->sbale_curr = 0;


 sbale = zfcp_qdio_sbale_curr(qdio, q_req);
 sbale->sflags |= q_req->sbtype;

 return sbale;
}
