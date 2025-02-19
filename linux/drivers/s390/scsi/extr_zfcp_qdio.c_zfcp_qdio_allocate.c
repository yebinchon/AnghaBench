
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio {int req_q; int res_q; int req_q_wq; } ;
struct qdio_initialize {int dummy; } ;


 int ENOMEM ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int init_waitqueue_head (int *) ;
 int qdio_alloc_buffers (int ,int ) ;
 int qdio_allocate (struct qdio_initialize*) ;
 int qdio_free_buffers (int ,int ) ;
 int zfcp_qdio_setup_init_data (struct qdio_initialize*,struct zfcp_qdio*) ;

__attribute__((used)) static int zfcp_qdio_allocate(struct zfcp_qdio *qdio)
{
 struct qdio_initialize init_data;
 int ret;

 ret = qdio_alloc_buffers(qdio->req_q, QDIO_MAX_BUFFERS_PER_Q);
 if (ret)
  return -ENOMEM;

 ret = qdio_alloc_buffers(qdio->res_q, QDIO_MAX_BUFFERS_PER_Q);
 if (ret)
  goto free_req_q;

 zfcp_qdio_setup_init_data(&init_data, qdio);
 init_waitqueue_head(&qdio->req_q_wq);

 ret = qdio_allocate(&init_data);
 if (ret)
  goto free_res_q;

 return 0;

free_res_q:
 qdio_free_buffers(qdio->res_q, QDIO_MAX_BUFFERS_PER_Q);
free_req_q:
 qdio_free_buffers(qdio->req_q, QDIO_MAX_BUFFERS_PER_Q);
 return ret;
}
