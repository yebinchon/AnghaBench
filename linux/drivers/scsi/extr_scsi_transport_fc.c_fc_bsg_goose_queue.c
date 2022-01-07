
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct fc_rport {struct request_queue* rqst_q; } ;


 int blk_mq_run_hw_queues (struct request_queue*,int) ;

__attribute__((used)) static void
fc_bsg_goose_queue(struct fc_rport *rport)
{
 struct request_queue *q = rport->rqst_q;

 if (q)
  blk_mq_run_hw_queues(q, 1);
}
