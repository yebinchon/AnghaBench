
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_queue {int queue_size; int * rsp_ring; } ;


 int nvme_rdma_destroy_queue_ib (struct nvme_rdma_queue*) ;
 int nvme_rdma_post_recv (struct nvme_rdma_queue*,int *) ;

__attribute__((used)) static int nvme_rdma_conn_established(struct nvme_rdma_queue *queue)
{
 int ret, i;

 for (i = 0; i < queue->queue_size; i++) {
  ret = nvme_rdma_post_recv(queue, &queue->rsp_ring[i]);
  if (ret)
   goto out_destroy_queue_ib;
 }

 return 0;

out_destroy_queue_ib:
 nvme_rdma_destroy_queue_ib(queue);
 return ret;
}
