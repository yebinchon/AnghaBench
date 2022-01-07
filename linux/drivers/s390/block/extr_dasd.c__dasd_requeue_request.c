
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct dasd_ccw_req {TYPE_1__* dq; scalar_t__ callback_data; struct dasd_block* block; } ;
struct dasd_block {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 int blk_mq_requeue_request (struct request*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int _dasd_requeue_request(struct dasd_ccw_req *cqr)
{
 struct dasd_block *block = cqr->block;
 struct request *req;

 if (!block)
  return -EINVAL;
 spin_lock_irq(&cqr->dq->lock);
 req = (struct request *) cqr->callback_data;
 blk_mq_requeue_request(req, 0);
 spin_unlock_irq(&cqr->dq->lock);

 return 0;
}
