
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_request {int entry; struct nvme_tcp_queue* queue; } ;
struct nvme_tcp_queue {int io_work; int io_cpu; int lock; int send_list; } ;


 int list_add_tail (int *,int *) ;
 int nvme_tcp_wq ;
 int queue_work_on (int ,int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void nvme_tcp_queue_request(struct nvme_tcp_request *req)
{
 struct nvme_tcp_queue *queue = req->queue;

 spin_lock(&queue->lock);
 list_add_tail(&req->entry, &queue->send_list);
 spin_unlock(&queue->lock);

 queue_work_on(queue->io_cpu, nvme_tcp_wq, &queue->io_work);
}
