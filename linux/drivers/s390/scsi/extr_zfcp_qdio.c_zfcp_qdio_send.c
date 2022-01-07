
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct zfcp_qdio_req {int sbal_first; scalar_t__ sbal_number; } ;
struct zfcp_qdio {int req_q_idx; int req_q_free; int req_q; TYPE_1__* adapter; int stat_lock; } ;
struct TYPE_2__ {int ccw_device; } ;


 int QDIO_FLAG_SYNC_OUTPUT ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int atomic_sub (scalar_t__,int *) ;
 int do_QDIO (int ,int ,int ,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int zfcp_qdio_account (struct zfcp_qdio*) ;
 int zfcp_qdio_zero_sbals (int ,int ,scalar_t__) ;

int zfcp_qdio_send(struct zfcp_qdio *qdio, struct zfcp_qdio_req *q_req)
{
 int retval;
 u8 sbal_number = q_req->sbal_number;

 spin_lock(&qdio->stat_lock);
 zfcp_qdio_account(qdio);
 spin_unlock(&qdio->stat_lock);

 retval = do_QDIO(qdio->adapter->ccw_device, QDIO_FLAG_SYNC_OUTPUT, 0,
    q_req->sbal_first, sbal_number);

 if (unlikely(retval)) {
  zfcp_qdio_zero_sbals(qdio->req_q, q_req->sbal_first,
         sbal_number);
  return retval;
 }


 atomic_sub(sbal_number, &qdio->req_q_free);
 qdio->req_q_idx += sbal_number;
 qdio->req_q_idx %= QDIO_MAX_BUFFERS_PER_Q;

 return 0;
}
