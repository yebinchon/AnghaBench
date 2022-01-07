
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {scalar_t__* request; int error; struct scm_blk_dev* bdev; } ;
struct scm_blk_dev {int queued_reqs; } ;
typedef int blk_status_t ;


 int atomic_dec (int *) ;
 int blk_mq_complete_request (scalar_t__) ;
 int * blk_mq_rq_to_pdu (scalar_t__) ;
 int nr_requests_per_io ;
 int scm_request_done (struct scm_request*) ;

__attribute__((used)) static void scm_request_finish(struct scm_request *scmrq)
{
 struct scm_blk_dev *bdev = scmrq->bdev;
 blk_status_t *error;
 int i;

 for (i = 0; i < nr_requests_per_io && scmrq->request[i]; i++) {
  error = blk_mq_rq_to_pdu(scmrq->request[i]);
  *error = scmrq->error;
  blk_mq_complete_request(scmrq->request[i]);
 }

 atomic_dec(&bdev->queued_reqs);
 scm_request_done(scmrq);
}
