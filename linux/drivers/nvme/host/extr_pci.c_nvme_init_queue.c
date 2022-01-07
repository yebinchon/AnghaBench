
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvme_queue {int cq_phase; scalar_t__ cqes; int * q_db; scalar_t__ cq_head; scalar_t__ last_sq_tail; scalar_t__ sq_tail; struct nvme_dev* dev; } ;
struct nvme_dev {int db_stride; int online_queues; int * dbs; } ;


 int CQ_SIZE (struct nvme_queue*) ;
 int memset (void*,int ,int ) ;
 int nvme_dbbuf_init (struct nvme_dev*,struct nvme_queue*,int) ;
 int wmb () ;

__attribute__((used)) static void nvme_init_queue(struct nvme_queue *nvmeq, u16 qid)
{
 struct nvme_dev *dev = nvmeq->dev;

 nvmeq->sq_tail = 0;
 nvmeq->last_sq_tail = 0;
 nvmeq->cq_head = 0;
 nvmeq->cq_phase = 1;
 nvmeq->q_db = &dev->dbs[qid * 2 * dev->db_stride];
 memset((void *)nvmeq->cqes, 0, CQ_SIZE(nvmeq));
 nvme_dbbuf_init(dev, nvmeq, qid);
 dev->online_queues++;
 wmb();
}
