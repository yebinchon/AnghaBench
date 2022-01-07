
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nvme_tcp_queue {int rd_enabled; TYPE_1__* ctrl; } ;
struct TYPE_7__ {struct nvme_tcp_queue* data; } ;
struct TYPE_8__ {TYPE_2__ arg; } ;
typedef TYPE_3__ read_descriptor_t ;
struct TYPE_9__ {int device; } ;
struct TYPE_6__ {TYPE_5__ ctrl; } ;


 int EFAULT ;



 int dev_err (int ,char*,int) ;
 int nvme_tcp_error_recovery (TYPE_5__*) ;
 int nvme_tcp_recv_data (struct nvme_tcp_queue*,struct sk_buff*,unsigned int*,size_t*) ;
 int nvme_tcp_recv_ddgst (struct nvme_tcp_queue*,struct sk_buff*,unsigned int*,size_t*) ;
 int nvme_tcp_recv_pdu (struct nvme_tcp_queue*,struct sk_buff*,unsigned int*,size_t*) ;
 int nvme_tcp_recv_state (struct nvme_tcp_queue*) ;

__attribute__((used)) static int nvme_tcp_recv_skb(read_descriptor_t *desc, struct sk_buff *skb,
        unsigned int offset, size_t len)
{
 struct nvme_tcp_queue *queue = desc->arg.data;
 size_t consumed = len;
 int result;

 while (len) {
  switch (nvme_tcp_recv_state(queue)) {
  case 128:
   result = nvme_tcp_recv_pdu(queue, skb, &offset, &len);
   break;
  case 130:
   result = nvme_tcp_recv_data(queue, skb, &offset, &len);
   break;
  case 129:
   result = nvme_tcp_recv_ddgst(queue, skb, &offset, &len);
   break;
  default:
   result = -EFAULT;
  }
  if (result) {
   dev_err(queue->ctrl->ctrl.device,
    "receive failed:  %d\n", result);
   queue->rd_enabled = 0;
   nvme_tcp_error_recovery(&queue->ctrl->ctrl);
   return result;
  }
 }

 return consumed;
}
