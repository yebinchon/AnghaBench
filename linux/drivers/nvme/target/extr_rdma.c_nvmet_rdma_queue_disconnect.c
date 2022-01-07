
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_rdma_queue {int queue_list; } ;


 int __nvmet_rdma_queue_disconnect (struct nvmet_rdma_queue*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmet_rdma_queue_mutex ;

__attribute__((used)) static void nvmet_rdma_queue_disconnect(struct nvmet_rdma_queue *queue)
{
 bool disconnect = 0;

 mutex_lock(&nvmet_rdma_queue_mutex);
 if (!list_empty(&queue->queue_list)) {
  list_del_init(&queue->queue_list);
  disconnect = 1;
 }
 mutex_unlock(&nvmet_rdma_queue_mutex);

 if (disconnect)
  __nvmet_rdma_queue_disconnect(queue);
}
