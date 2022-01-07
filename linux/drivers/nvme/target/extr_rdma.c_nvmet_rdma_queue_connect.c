
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {int context; } ;
struct TYPE_2__ {int conn; } ;
struct rdma_cm_event {TYPE_1__ param; } ;
struct nvmet_rdma_queue {scalar_t__ host_qid; int queue_list; int release_work; int port; } ;
struct nvmet_rdma_device {int ref; } ;


 int ECONNREFUSED ;
 int EINVAL ;
 int ENOMEM ;
 int NVME_RDMA_CM_NO_RSC ;
 int flush_scheduled_work () ;
 int kref_put (int *,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nvmet_rdma_queue* nvmet_rdma_alloc_queue (struct nvmet_rdma_device*,struct rdma_cm_id*,struct rdma_cm_event*) ;
 int nvmet_rdma_cm_accept (struct rdma_cm_id*,struct nvmet_rdma_queue*,int *) ;
 int nvmet_rdma_cm_reject (struct rdma_cm_id*,int ) ;
 struct nvmet_rdma_device* nvmet_rdma_find_get_device (struct rdma_cm_id*) ;
 int nvmet_rdma_free_dev ;
 int nvmet_rdma_queue_list ;
 int nvmet_rdma_queue_mutex ;
 int schedule_work (int *) ;

__attribute__((used)) static int nvmet_rdma_queue_connect(struct rdma_cm_id *cm_id,
  struct rdma_cm_event *event)
{
 struct nvmet_rdma_device *ndev;
 struct nvmet_rdma_queue *queue;
 int ret = -EINVAL;

 ndev = nvmet_rdma_find_get_device(cm_id);
 if (!ndev) {
  nvmet_rdma_cm_reject(cm_id, NVME_RDMA_CM_NO_RSC);
  return -ECONNREFUSED;
 }

 queue = nvmet_rdma_alloc_queue(ndev, cm_id, event);
 if (!queue) {
  ret = -ENOMEM;
  goto put_device;
 }
 queue->port = cm_id->context;

 if (queue->host_qid == 0) {

  flush_scheduled_work();
 }

 ret = nvmet_rdma_cm_accept(cm_id, queue, &event->param.conn);
 if (ret) {
  schedule_work(&queue->release_work);

  return 0;
 }

 mutex_lock(&nvmet_rdma_queue_mutex);
 list_add_tail(&queue->queue_list, &nvmet_rdma_queue_list);
 mutex_unlock(&nvmet_rdma_queue_mutex);

 return 0;

put_device:
 kref_put(&ndev->ref, nvmet_rdma_free_dev);

 return ret;
}
