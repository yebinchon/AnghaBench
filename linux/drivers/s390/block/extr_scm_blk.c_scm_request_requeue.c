
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {scalar_t__* request; struct scm_blk_dev* bdev; } ;
struct scm_blk_dev {int rq; int queued_reqs; } ;


 int atomic_dec (int *) ;
 int blk_mq_kick_requeue_list (int ) ;
 int blk_mq_requeue_request (scalar_t__,int) ;
 int nr_requests_per_io ;
 int scm_request_done (struct scm_request*) ;

__attribute__((used)) static void scm_request_requeue(struct scm_request *scmrq)
{
 struct scm_blk_dev *bdev = scmrq->bdev;
 int i;

 for (i = 0; i < nr_requests_per_io && scmrq->request[i]; i++)
  blk_mq_requeue_request(scmrq->request[i], 0);

 atomic_dec(&bdev->queued_reqs);
 scm_request_done(scmrq);
 blk_mq_kick_requeue_list(bdev->rq);
}
