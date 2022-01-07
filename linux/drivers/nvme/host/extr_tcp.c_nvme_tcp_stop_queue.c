
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_queue {int flags; } ;
struct nvme_tcp_ctrl {struct nvme_tcp_queue* queues; } ;
struct nvme_ctrl {int dummy; } ;


 int NVME_TCP_Q_LIVE ;
 int __nvme_tcp_stop_queue (struct nvme_tcp_queue*) ;
 int test_and_clear_bit (int ,int *) ;
 struct nvme_tcp_ctrl* to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_stop_queue(struct nvme_ctrl *nctrl, int qid)
{
 struct nvme_tcp_ctrl *ctrl = to_tcp_ctrl(nctrl);
 struct nvme_tcp_queue *queue = &ctrl->queues[qid];

 if (!test_and_clear_bit(NVME_TCP_Q_LIVE, &queue->flags))
  return;

 __nvme_tcp_stop_queue(queue);
}
