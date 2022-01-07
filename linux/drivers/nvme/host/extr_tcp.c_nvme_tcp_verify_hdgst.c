
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_tcp_queue {TYPE_2__* ctrl; int rcv_hash; } ;
struct nvme_tcp_hdr {int flags; int hlen; } ;
typedef scalar_t__ __le32 ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;


 int EIO ;
 int EPROTO ;
 int NVME_TCP_F_HDGST ;
 int dev_err (int ,char*,int ,...) ;
 int le32_to_cpu (scalar_t__) ;
 int nvme_tcp_hdgst (int ,void*,size_t) ;
 int nvme_tcp_queue_id (struct nvme_tcp_queue*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nvme_tcp_verify_hdgst(struct nvme_tcp_queue *queue,
  void *pdu, size_t pdu_len)
{
 struct nvme_tcp_hdr *hdr = pdu;
 __le32 recv_digest;
 __le32 exp_digest;

 if (unlikely(!(hdr->flags & NVME_TCP_F_HDGST))) {
  dev_err(queue->ctrl->ctrl.device,
   "queue %d: header digest flag is cleared\n",
   nvme_tcp_queue_id(queue));
  return -EPROTO;
 }

 recv_digest = *(__le32 *)(pdu + hdr->hlen);
 nvme_tcp_hdgst(queue->rcv_hash, pdu, pdu_len);
 exp_digest = *(__le32 *)(pdu + hdr->hlen);
 if (recv_digest != exp_digest) {
  dev_err(queue->ctrl->ctrl.device,
   "header digest error: recv %#x expected %#x\n",
   le32_to_cpu(recv_digest), le32_to_cpu(exp_digest));
  return -EIO;
 }

 return 0;
}
