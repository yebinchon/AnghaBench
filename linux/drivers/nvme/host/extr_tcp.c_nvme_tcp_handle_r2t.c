
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct nvme_tcp_request {scalar_t__ offset; int state; } ;
struct nvme_tcp_r2t_pdu {int command_id; } ;
struct nvme_tcp_queue {TYPE_2__* ctrl; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;


 int ENOENT ;
 int NVME_TCP_SEND_H2C_PDU ;
 struct nvme_tcp_request* blk_mq_rq_to_pdu (struct request*) ;
 struct request* blk_mq_tag_to_rq (int ,int ) ;
 int dev_err (int ,char*,int ,int ) ;
 int nvme_tcp_queue_id (struct nvme_tcp_queue*) ;
 int nvme_tcp_queue_request (struct nvme_tcp_request*) ;
 int nvme_tcp_setup_h2c_data_pdu (struct nvme_tcp_request*,struct nvme_tcp_r2t_pdu*) ;
 int nvme_tcp_tagset (struct nvme_tcp_queue*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nvme_tcp_handle_r2t(struct nvme_tcp_queue *queue,
  struct nvme_tcp_r2t_pdu *pdu)
{
 struct nvme_tcp_request *req;
 struct request *rq;
 int ret;

 rq = blk_mq_tag_to_rq(nvme_tcp_tagset(queue), pdu->command_id);
 if (!rq) {
  dev_err(queue->ctrl->ctrl.device,
   "queue %d tag %#x not found\n",
   nvme_tcp_queue_id(queue), pdu->command_id);
  return -ENOENT;
 }
 req = blk_mq_rq_to_pdu(rq);

 ret = nvme_tcp_setup_h2c_data_pdu(req, pdu);
 if (unlikely(ret))
  return ret;

 req->state = NVME_TCP_SEND_H2C_PDU;
 req->offset = 0;

 nvme_tcp_queue_request(req);

 return 0;
}
