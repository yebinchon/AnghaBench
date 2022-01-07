
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio {int res_q; int req_q; TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ ccw_device; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 int kfree (struct zfcp_qdio*) ;
 int qdio_free (scalar_t__) ;
 int qdio_free_buffers (int ,int ) ;

void zfcp_qdio_destroy(struct zfcp_qdio *qdio)
{
 if (!qdio)
  return;

 if (qdio->adapter->ccw_device)
  qdio_free(qdio->adapter->ccw_device);

 qdio_free_buffers(qdio->req_q, QDIO_MAX_BUFFERS_PER_Q);
 qdio_free_buffers(qdio->res_q, QDIO_MAX_BUFFERS_PER_Q);
 kfree(qdio);
}
