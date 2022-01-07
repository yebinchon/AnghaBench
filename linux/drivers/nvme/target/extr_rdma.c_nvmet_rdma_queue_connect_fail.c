
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int dummy; } ;
struct nvmet_rdma_queue {scalar_t__ state; int release_work; int idx; int queue_list; } ;


 scalar_t__ NVMET_RDMA_Q_CONNECTING ;
 int WARN_ON_ONCE (int) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmet_rdma_queue_mutex ;
 int pr_err (char*,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void nvmet_rdma_queue_connect_fail(struct rdma_cm_id *cm_id,
  struct nvmet_rdma_queue *queue)
{
 WARN_ON_ONCE(queue->state != NVMET_RDMA_Q_CONNECTING);

 mutex_lock(&nvmet_rdma_queue_mutex);
 if (!list_empty(&queue->queue_list))
  list_del_init(&queue->queue_list);
 mutex_unlock(&nvmet_rdma_queue_mutex);

 pr_err("failed to connect queue %d\n", queue->idx);
 schedule_work(&queue->release_work);
}
