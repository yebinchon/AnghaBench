#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct nvme_tcp_queue {scalar_t__ hdr_digest; } ;
struct TYPE_6__ {scalar_t__ data_len; int /*<<< orphan*/ * curr_bio; scalar_t__ offset; int /*<<< orphan*/  state; struct nvme_tcp_cmd_pdu* pdu; } ;
struct nvme_tcp_ctrl {TYPE_3__ async_req; struct nvme_tcp_queue* queues; } ;
struct TYPE_4__ {int hlen; int /*<<< orphan*/  plen; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  command_id; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_2__ common; } ;
struct nvme_tcp_cmd_pdu {TYPE_1__ hdr; struct nvme_command cmd; } ;
struct nvme_ctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_AQ_BLK_MQ_DEPTH ; 
 int /*<<< orphan*/  NVME_CMD_SGL_METABUF ; 
 int /*<<< orphan*/  NVME_TCP_F_HDGST ; 
 int /*<<< orphan*/  NVME_TCP_SEND_CMD_PDU ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_tcp_cmd_pdu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_admin_async_event ; 
 int /*<<< orphan*/  nvme_tcp_cmd ; 
 scalar_t__ FUNC2 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_command*) ; 
 struct nvme_tcp_ctrl* FUNC5 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC6(struct nvme_ctrl *arg)
{
	struct nvme_tcp_ctrl *ctrl = FUNC5(arg);
	struct nvme_tcp_queue *queue = &ctrl->queues[0];
	struct nvme_tcp_cmd_pdu *pdu = ctrl->async_req.pdu;
	struct nvme_command *cmd = &pdu->cmd;
	u8 hdgst = FUNC2(queue);

	FUNC1(pdu, 0, sizeof(*pdu));
	pdu->hdr.type = nvme_tcp_cmd;
	if (queue->hdr_digest)
		pdu->hdr.flags |= NVME_TCP_F_HDGST;
	pdu->hdr.hlen = sizeof(*pdu);
	pdu->hdr.plen = FUNC0(pdu->hdr.hlen + hdgst);

	cmd->common.opcode = nvme_admin_async_event;
	cmd->common.command_id = NVME_AQ_BLK_MQ_DEPTH;
	cmd->common.flags |= NVME_CMD_SGL_METABUF;
	FUNC4(cmd);

	ctrl->async_req.state = NVME_TCP_SEND_CMD_PDU;
	ctrl->async_req.offset = 0;
	ctrl->async_req.curr_bio = NULL;
	ctrl->async_req.data_len = 0;

	FUNC3(&ctrl->async_req);
}