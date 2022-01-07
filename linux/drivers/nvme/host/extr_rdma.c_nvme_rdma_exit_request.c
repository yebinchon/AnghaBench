
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nvme_rdma_request {TYPE_1__ sqe; } ;
struct blk_mq_tag_set {int dummy; } ;


 struct nvme_rdma_request* blk_mq_rq_to_pdu (struct request*) ;
 int kfree (int ) ;

__attribute__((used)) static void nvme_rdma_exit_request(struct blk_mq_tag_set *set,
  struct request *rq, unsigned int hctx_idx)
{
 struct nvme_rdma_request *req = blk_mq_rq_to_pdu(rq);

 kfree(req->sqe.data);
}
