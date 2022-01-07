
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio_req {int sbal_limit; int sbal_first; } ;
struct zfcp_qdio {int req_q_free; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 int atomic_read (int *) ;
 int min (int ,int) ;

__attribute__((used)) static inline
void zfcp_qdio_sbal_limit(struct zfcp_qdio *qdio,
     struct zfcp_qdio_req *q_req, int max_sbals)
{
 int count = min(atomic_read(&qdio->req_q_free), max_sbals);

 q_req->sbal_limit = (q_req->sbal_first + count - 1) %
    QDIO_MAX_BUFFERS_PER_Q;
}
