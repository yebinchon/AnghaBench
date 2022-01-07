
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct nvme_queue {int dummy; } ;
struct nvme_iod {struct nvme_queue* nvmeq; } ;
struct blk_mq_tag_set {struct nvme_dev* driver_data; } ;
struct nvme_dev {int ctrl; struct nvme_queue* queues; struct blk_mq_tag_set tagset; } ;
struct TYPE_2__ {int * ctrl; } ;


 int BUG_ON (int) ;
 struct nvme_iod* blk_mq_rq_to_pdu (struct request*) ;
 TYPE_1__* nvme_req (struct request*) ;

__attribute__((used)) static int nvme_init_request(struct blk_mq_tag_set *set, struct request *req,
  unsigned int hctx_idx, unsigned int numa_node)
{
 struct nvme_dev *dev = set->driver_data;
 struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
 int queue_idx = (set == &dev->tagset) ? hctx_idx + 1 : 0;
 struct nvme_queue *nvmeq = &dev->queues[queue_idx];

 BUG_ON(!nvmeq);
 iod->nvmeq = nvmeq;

 nvme_req(req)->ctrl = &dev->ctrl;
 return 0;
}
