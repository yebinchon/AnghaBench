
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int tag; } ;
struct nvme_tcp_queue {TYPE_2__* ctrl; int data_remaining; } ;
struct TYPE_4__ {int flags; } ;
struct nvme_tcp_data_pdu {TYPE_1__ hdr; int data_length; int command_id; } ;
struct TYPE_6__ {int device; } ;
struct TYPE_5__ {TYPE_3__ ctrl; } ;


 int EIO ;
 int ENOENT ;
 int EPROTO ;
 int NVME_TCP_F_DATA_LAST ;
 int NVME_TCP_F_DATA_SUCCESS ;
 struct request* blk_mq_tag_to_rq (int ,int ) ;
 int blk_rq_payload_bytes (struct request*) ;
 int dev_err (int ,char*,int ,int ) ;
 int le32_to_cpu (int ) ;
 int nvme_tcp_error_recovery (TYPE_3__*) ;
 int nvme_tcp_queue_id (struct nvme_tcp_queue*) ;
 int nvme_tcp_tagset (struct nvme_tcp_queue*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nvme_tcp_handle_c2h_data(struct nvme_tcp_queue *queue,
  struct nvme_tcp_data_pdu *pdu)
{
 struct request *rq;

 rq = blk_mq_tag_to_rq(nvme_tcp_tagset(queue), pdu->command_id);
 if (!rq) {
  dev_err(queue->ctrl->ctrl.device,
   "queue %d tag %#x not found\n",
   nvme_tcp_queue_id(queue), pdu->command_id);
  return -ENOENT;
 }

 if (!blk_rq_payload_bytes(rq)) {
  dev_err(queue->ctrl->ctrl.device,
   "queue %d tag %#x unexpected data\n",
   nvme_tcp_queue_id(queue), rq->tag);
  return -EIO;
 }

 queue->data_remaining = le32_to_cpu(pdu->data_length);

 if (pdu->hdr.flags & NVME_TCP_F_DATA_SUCCESS &&
     unlikely(!(pdu->hdr.flags & NVME_TCP_F_DATA_LAST))) {
  dev_err(queue->ctrl->ctrl.device,
   "queue %d tag %#x SUCCESS set but not last PDU\n",
   nvme_tcp_queue_id(queue), rq->tag);
  nvme_tcp_error_recovery(&queue->ctrl->ctrl);
  return -EPROTO;
 }

 return 0;
}
