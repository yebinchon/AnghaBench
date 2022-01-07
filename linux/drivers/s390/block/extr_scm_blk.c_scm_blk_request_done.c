
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
typedef int blk_status_t ;


 int blk_mq_end_request (struct request*,int ) ;
 int * blk_mq_rq_to_pdu (struct request*) ;

__attribute__((used)) static void scm_blk_request_done(struct request *req)
{
 blk_status_t *error = blk_mq_rq_to_pdu(req);

 blk_mq_end_request(req, *error);
}
