
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_request {size_t pdu_len; size_t pdu_sent; } ;


 scalar_t__ WRITE ;
 int blk_mq_rq_from_pdu (struct nvme_tcp_request*) ;
 scalar_t__ rq_data_dir (int ) ;

__attribute__((used)) static inline size_t nvme_tcp_pdu_data_left(struct nvme_tcp_request *req)
{
 return rq_data_dir(blk_mq_rq_from_pdu(req)) == WRITE ?
   req->pdu_len - req->pdu_sent : 0;
}
