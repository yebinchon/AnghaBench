
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio {TYPE_1__* adapter; int req_q_full; int req_q_lock; int req_q_wq; } ;
struct TYPE_2__ {int status; } ;


 int EIO ;
 int HZ ;
 int ZFCP_STATUS_ADAPTER_QDIOUP ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 long wait_event_interruptible_lock_irq_timeout (int ,int ,int ,int) ;
 int zfcp_erp_adapter_reopen (TYPE_1__*,int ,char*) ;
 int zfcp_qdio_sbal_check (struct zfcp_qdio*) ;

int zfcp_qdio_sbal_get(struct zfcp_qdio *qdio)
{
 long ret;

 ret = wait_event_interruptible_lock_irq_timeout(qdio->req_q_wq,
         zfcp_qdio_sbal_check(qdio), qdio->req_q_lock, 5 * HZ);

 if (!(atomic_read(&qdio->adapter->status) & ZFCP_STATUS_ADAPTER_QDIOUP))
  return -EIO;

 if (ret > 0)
  return 0;

 if (!ret) {
  atomic_inc(&qdio->req_q_full);

  zfcp_erp_adapter_reopen(qdio->adapter, 0, "qdsbg_1");
 }

 return -EIO;
}
