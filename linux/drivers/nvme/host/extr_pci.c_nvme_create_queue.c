
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvme_queue {int cq_vector; int flags; struct nvme_dev* dev; } ;
struct nvme_dev {int num_vecs; int online_queues; } ;


 int NVMEQ_DELETE_ERROR ;
 int NVMEQ_ENABLED ;
 int NVMEQ_POLLED ;
 int adapter_alloc_cq (struct nvme_dev*,int,struct nvme_queue*,int) ;
 int adapter_alloc_sq (struct nvme_dev*,int,struct nvme_queue*) ;
 int adapter_delete_cq (struct nvme_dev*,int) ;
 int adapter_delete_sq (struct nvme_dev*,int) ;
 int clear_bit (int ,int *) ;
 int nvme_init_queue (struct nvme_queue*,int) ;
 int queue_request_irq (struct nvme_queue*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int nvme_create_queue(struct nvme_queue *nvmeq, int qid, bool polled)
{
 struct nvme_dev *dev = nvmeq->dev;
 int result;
 u16 vector = 0;

 clear_bit(NVMEQ_DELETE_ERROR, &nvmeq->flags);





 if (!polled)
  vector = dev->num_vecs == 1 ? 0 : qid;
 else
  set_bit(NVMEQ_POLLED, &nvmeq->flags);

 result = adapter_alloc_cq(dev, qid, nvmeq, vector);
 if (result)
  return result;

 result = adapter_alloc_sq(dev, qid, nvmeq);
 if (result < 0)
  return result;
 else if (result)
  goto release_cq;

 nvmeq->cq_vector = vector;
 nvme_init_queue(nvmeq, qid);

 if (!polled) {
  result = queue_request_irq(nvmeq);
  if (result < 0)
   goto release_sq;
 }

 set_bit(NVMEQ_ENABLED, &nvmeq->flags);
 return result;

release_sq:
 dev->online_queues--;
 adapter_delete_sq(dev, qid);
release_cq:
 adapter_delete_cq(dev, qid);
 return result;
}
