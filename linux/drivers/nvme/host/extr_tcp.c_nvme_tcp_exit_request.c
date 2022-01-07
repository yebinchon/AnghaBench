
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nvme_tcp_request {int pdu; } ;
struct blk_mq_tag_set {int dummy; } ;


 struct nvme_tcp_request* blk_mq_rq_to_pdu (struct request*) ;
 int page_frag_free (int ) ;

__attribute__((used)) static void nvme_tcp_exit_request(struct blk_mq_tag_set *set,
  struct request *rq, unsigned int hctx_idx)
{
 struct nvme_tcp_request *req = blk_mq_rq_to_pdu(rq);

 page_frag_free(req->pdu);
}
