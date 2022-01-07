
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {scalar_t__ timeout; int req_list; int req_type; } ;
struct esas2r_adapter {int queue_lock; int defer_list; int flags; } ;


 int AF_CHPRST_PENDING ;
 int AF_FLASHING ;
 scalar_t__ ESAS2R_DEFAULT_TMO ;
 int RT_DISC_REQ ;
 int esas2r_disc_local_start_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool esas2r_disc_start_request(struct esas2r_adapter *a,
          struct esas2r_request *rq)
{
 unsigned long flags;


 if (rq->timeout < ESAS2R_DEFAULT_TMO)
  rq->timeout = ESAS2R_DEFAULT_TMO;






 rq->req_type = RT_DISC_REQ;

 spin_lock_irqsave(&a->queue_lock, flags);

 if (!test_bit(AF_CHPRST_PENDING, &a->flags) &&
     !test_bit(AF_FLASHING, &a->flags))
  esas2r_disc_local_start_request(a, rq);
 else
  list_add_tail(&rq->req_list, &a->defer_list);

 spin_unlock_irqrestore(&a->queue_lock, flags);

 return 1;
}
