
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio {int req_q_idx; int req_q_free; int req_q; int req_q_wq; int req_q_lock; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int ccw_device; int status; } ;


 int QDIO_FLAG_CLEANUP_USING_CLEAR ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int ZFCP_STATUS_ADAPTER_QDIOUP ;
 int atomic_andnot (int,int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int qdio_shutdown (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up (int *) ;
 int zfcp_qdio_zero_sbals (int ,int,int) ;

void zfcp_qdio_close(struct zfcp_qdio *qdio)
{
 struct zfcp_adapter *adapter = qdio->adapter;
 int idx, count;

 if (!(atomic_read(&adapter->status) & ZFCP_STATUS_ADAPTER_QDIOUP))
  return;


 spin_lock_irq(&qdio->req_q_lock);
 atomic_andnot(ZFCP_STATUS_ADAPTER_QDIOUP, &adapter->status);
 spin_unlock_irq(&qdio->req_q_lock);

 wake_up(&qdio->req_q_wq);

 qdio_shutdown(adapter->ccw_device, QDIO_FLAG_CLEANUP_USING_CLEAR);


 count = atomic_read(&qdio->req_q_free);
 if (count < QDIO_MAX_BUFFERS_PER_Q) {
  idx = (qdio->req_q_idx + count) % QDIO_MAX_BUFFERS_PER_Q;
  count = QDIO_MAX_BUFFERS_PER_Q - count;
  zfcp_qdio_zero_sbals(qdio->req_q, idx, count);
 }
 qdio->req_q_idx = 0;
 atomic_set(&qdio->req_q_free, 0);
}
