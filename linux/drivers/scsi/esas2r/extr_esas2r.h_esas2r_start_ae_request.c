
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {int dummy; } ;
struct esas2r_adapter {int queue_lock; } ;


 int esas2r_build_ae_req (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_start_vda_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void esas2r_start_ae_request(struct esas2r_adapter *a,
        struct esas2r_request *rq)
{
 unsigned long flags;

 esas2r_build_ae_req(a, rq);

 spin_lock_irqsave(&a->queue_lock, flags);
 esas2r_start_vda_request(a, rq);
 spin_unlock_irqrestore(&a->queue_lock, flags);
}
