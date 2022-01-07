
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;
struct request {int mq_hctx; int * end_io_data; int cmd_flags; } ;
struct gendisk {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int QUEUE_FLAG_POLL ;
 int REQ_HIPRI ;
 int WARN_ON_ONCE (int) ;
 int blk_execute_rq_nowait (struct request_queue*,struct gendisk*,struct request*,int,int ) ;
 int blk_poll (struct request_queue*,int ,int) ;
 int completion_done (int *) ;
 int cond_resched () ;
 int nvme_end_sync_rq ;
 int request_to_qc_t (int ,struct request*) ;
 int test_bit (int ,int *) ;
 int wait ;

__attribute__((used)) static void nvme_execute_rq_polled(struct request_queue *q,
  struct gendisk *bd_disk, struct request *rq, int at_head)
{
 DECLARE_COMPLETION_ONSTACK(wait);

 WARN_ON_ONCE(!test_bit(QUEUE_FLAG_POLL, &q->queue_flags));

 rq->cmd_flags |= REQ_HIPRI;
 rq->end_io_data = &wait;
 blk_execute_rq_nowait(q, bd_disk, rq, at_head, nvme_end_sync_rq);

 while (!completion_done(&wait)) {
  blk_poll(q, request_to_qc_t(rq->mq_hctx, rq), 1);
  cond_resched();
 }
}
