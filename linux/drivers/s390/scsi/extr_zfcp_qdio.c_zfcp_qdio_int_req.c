
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio {int req_q_wq; int req_q_free; int stat_lock; int req_q; } ;
struct ccw_device {int dummy; } ;


 int atomic_add (int,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (unsigned int) ;
 int wake_up (int *) ;
 int zfcp_qdio_account (struct zfcp_qdio*) ;
 int zfcp_qdio_handler_error (struct zfcp_qdio*,char*,unsigned int) ;
 int zfcp_qdio_zero_sbals (int ,int,int) ;

__attribute__((used)) static void zfcp_qdio_int_req(struct ccw_device *cdev, unsigned int qdio_err,
         int queue_no, int idx, int count,
         unsigned long parm)
{
 struct zfcp_qdio *qdio = (struct zfcp_qdio *) parm;

 if (unlikely(qdio_err)) {
  zfcp_qdio_handler_error(qdio, "qdireq1", qdio_err);
  return;
 }


 zfcp_qdio_zero_sbals(qdio->req_q, idx, count);

 spin_lock_irq(&qdio->stat_lock);
 zfcp_qdio_account(qdio);
 spin_unlock_irq(&qdio->stat_lock);
 atomic_add(count, &qdio->req_q_free);
 wake_up(&qdio->req_q_wq);
}
