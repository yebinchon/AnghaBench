
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_queue {int q_depth; int cq_phase; int qid; int cq_dma_addr; scalar_t__ cqes; int * q_db; scalar_t__ cq_head; int cq_poll_lock; int sq_lock; struct nvme_dev* dev; int sqes; } ;
struct TYPE_2__ {int queue_count; } ;
struct nvme_dev {int db_stride; int dev; TYPE_1__ ctrl; int * dbs; int io_sqes; struct nvme_queue* queues; } ;


 int CQ_SIZE (struct nvme_queue*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NVME_ADM_SQES ;
 scalar_t__ dma_alloc_coherent (int ,int ,int *,int ) ;
 int dma_free_coherent (int ,int ,void*,int ) ;
 scalar_t__ nvme_alloc_sq_cmds (struct nvme_dev*,struct nvme_queue*,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
{
 struct nvme_queue *nvmeq = &dev->queues[qid];

 if (dev->ctrl.queue_count > qid)
  return 0;

 nvmeq->sqes = qid ? dev->io_sqes : NVME_ADM_SQES;
 nvmeq->q_depth = depth;
 nvmeq->cqes = dma_alloc_coherent(dev->dev, CQ_SIZE(nvmeq),
      &nvmeq->cq_dma_addr, GFP_KERNEL);
 if (!nvmeq->cqes)
  goto free_nvmeq;

 if (nvme_alloc_sq_cmds(dev, nvmeq, qid))
  goto free_cqdma;

 nvmeq->dev = dev;
 spin_lock_init(&nvmeq->sq_lock);
 spin_lock_init(&nvmeq->cq_poll_lock);
 nvmeq->cq_head = 0;
 nvmeq->cq_phase = 1;
 nvmeq->q_db = &dev->dbs[qid * 2 * dev->db_stride];
 nvmeq->qid = qid;
 dev->ctrl.queue_count++;

 return 0;

 free_cqdma:
 dma_free_coherent(dev->dev, CQ_SIZE(nvmeq), (void *)nvmeq->cqes,
     nvmeq->cq_dma_addr);
 free_nvmeq:
 return -ENOMEM;
}
