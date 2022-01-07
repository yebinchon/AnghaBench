
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_queue {int pdu; int sock; scalar_t__ data_digest; scalar_t__ hdr_digest; int flags; } ;
struct nvme_tcp_ctrl {struct nvme_tcp_queue* queues; } ;
struct nvme_ctrl {int dummy; } ;


 int NVME_TCP_Q_ALLOCATED ;
 int kfree (int ) ;
 int nvme_tcp_free_crypto (struct nvme_tcp_queue*) ;
 int sock_release (int ) ;
 int test_and_clear_bit (int ,int *) ;
 struct nvme_tcp_ctrl* to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_free_queue(struct nvme_ctrl *nctrl, int qid)
{
 struct nvme_tcp_ctrl *ctrl = to_tcp_ctrl(nctrl);
 struct nvme_tcp_queue *queue = &ctrl->queues[qid];

 if (!test_and_clear_bit(NVME_TCP_Q_ALLOCATED, &queue->flags))
  return;

 if (queue->hdr_digest || queue->data_digest)
  nvme_tcp_free_crypto(queue);

 sock_release(queue->sock);
 kfree(queue->pdu);
}
