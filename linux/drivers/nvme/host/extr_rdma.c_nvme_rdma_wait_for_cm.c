
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_queue {scalar_t__ cm_error; int cm_done; } ;


 int ETIMEDOUT ;
 int NVME_RDMA_CONNECT_TIMEOUT_MS ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int wait_for_completion_interruptible_timeout (int *,scalar_t__) ;

__attribute__((used)) static int nvme_rdma_wait_for_cm(struct nvme_rdma_queue *queue)
{
 int ret;

 ret = wait_for_completion_interruptible_timeout(&queue->cm_done,
   msecs_to_jiffies(NVME_RDMA_CONNECT_TIMEOUT_MS) + 1);
 if (ret < 0)
  return ret;
 if (ret == 0)
  return -ETIMEDOUT;
 WARN_ON_ONCE(queue->cm_error > 0);
 return queue->cm_error;
}
