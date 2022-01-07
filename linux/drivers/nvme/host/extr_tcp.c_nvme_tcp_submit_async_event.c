
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct nvme_tcp_queue {scalar_t__ hdr_digest; } ;
struct TYPE_6__ {scalar_t__ data_len; int * curr_bio; scalar_t__ offset; int state; struct nvme_tcp_cmd_pdu* pdu; } ;
struct nvme_tcp_ctrl {TYPE_3__ async_req; struct nvme_tcp_queue* queues; } ;
struct TYPE_4__ {int hlen; int plen; int flags; int type; } ;
struct TYPE_5__ {int flags; int command_id; int opcode; } ;
struct nvme_command {TYPE_2__ common; } ;
struct nvme_tcp_cmd_pdu {TYPE_1__ hdr; struct nvme_command cmd; } ;
struct nvme_ctrl {int dummy; } ;


 int NVME_AQ_BLK_MQ_DEPTH ;
 int NVME_CMD_SGL_METABUF ;
 int NVME_TCP_F_HDGST ;
 int NVME_TCP_SEND_CMD_PDU ;
 int cpu_to_le32 (scalar_t__) ;
 int memset (struct nvme_tcp_cmd_pdu*,int ,int) ;
 int nvme_admin_async_event ;
 int nvme_tcp_cmd ;
 scalar_t__ nvme_tcp_hdgst_len (struct nvme_tcp_queue*) ;
 int nvme_tcp_queue_request (TYPE_3__*) ;
 int nvme_tcp_set_sg_null (struct nvme_command*) ;
 struct nvme_tcp_ctrl* to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_submit_async_event(struct nvme_ctrl *arg)
{
 struct nvme_tcp_ctrl *ctrl = to_tcp_ctrl(arg);
 struct nvme_tcp_queue *queue = &ctrl->queues[0];
 struct nvme_tcp_cmd_pdu *pdu = ctrl->async_req.pdu;
 struct nvme_command *cmd = &pdu->cmd;
 u8 hdgst = nvme_tcp_hdgst_len(queue);

 memset(pdu, 0, sizeof(*pdu));
 pdu->hdr.type = nvme_tcp_cmd;
 if (queue->hdr_digest)
  pdu->hdr.flags |= NVME_TCP_F_HDGST;
 pdu->hdr.hlen = sizeof(*pdu);
 pdu->hdr.plen = cpu_to_le32(pdu->hdr.hlen + hdgst);

 cmd->common.opcode = nvme_admin_async_event;
 cmd->common.command_id = NVME_AQ_BLK_MQ_DEPTH;
 cmd->common.flags |= NVME_CMD_SGL_METABUF;
 nvme_tcp_set_sg_null(cmd);

 ctrl->async_req.state = NVME_TCP_SEND_CMD_PDU;
 ctrl->async_req.offset = 0;
 ctrl->async_req.curr_bio = ((void*)0);
 ctrl->async_req.data_len = 0;

 nvme_tcp_queue_request(&ctrl->async_req);
}
