
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nvme_fc_fcp_op {int dummy; } ;
struct blk_mq_tag_set {int driver_data; } ;


 void __nvme_fc_exit_request (int ,struct nvme_fc_fcp_op*) ;
 struct nvme_fc_fcp_op* blk_mq_rq_to_pdu (struct request*) ;

__attribute__((used)) static void
nvme_fc_exit_request(struct blk_mq_tag_set *set, struct request *rq,
  unsigned int hctx_idx)
{
 struct nvme_fc_fcp_op *op = blk_mq_rq_to_pdu(rq);

 return __nvme_fc_exit_request(set->driver_data, op);
}
