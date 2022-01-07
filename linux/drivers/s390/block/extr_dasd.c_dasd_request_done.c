
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; } ;


 int blk_mq_end_request (struct request*,int ) ;
 int blk_mq_run_hw_queues (int ,int) ;

__attribute__((used)) static void dasd_request_done(struct request *req)
{
 blk_mq_end_request(req, 0);
 blk_mq_run_hw_queues(req->q, 1);
}
