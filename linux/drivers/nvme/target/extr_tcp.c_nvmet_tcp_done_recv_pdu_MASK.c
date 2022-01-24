#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_3__ common; } ;
struct nvme_tcp_hdr {scalar_t__ type; } ;
struct TYPE_15__ {struct nvme_command cmd; struct nvme_tcp_hdr hdr; } ;
struct TYPE_16__ {TYPE_1__ cmd; } ;
struct nvmet_tcp_queue {scalar_t__ state; scalar_t__ idx; TYPE_7__* cmd; int /*<<< orphan*/  rcv_state; int /*<<< orphan*/  nvme_sq; int /*<<< orphan*/  nvme_cq; int /*<<< orphan*/  send_list_len; int /*<<< orphan*/  nr_cmds; TYPE_2__ pdu; } ;
struct nvmet_req {TYPE_13__* cmd; } ;
struct TYPE_21__ {struct nvmet_req req; } ;
struct TYPE_18__ {int /*<<< orphan*/  length; } ;
struct TYPE_19__ {TYPE_4__ sgl; } ;
struct TYPE_20__ {TYPE_5__ dptr; int /*<<< orphan*/  opcode; int /*<<< orphan*/  command_id; } ;
struct TYPE_14__ {TYPE_6__ common; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int EPROTO ; 
 scalar_t__ NVMET_TCP_Q_CONNECTING ; 
 int /*<<< orphan*/  NVMET_TCP_RECV_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_13__*,struct nvme_command*,int) ; 
 scalar_t__ nvme_tcp_h2c_data ; 
 scalar_t__ nvme_tcp_icreq ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_req*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmet_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_req*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nvmet_tcp_queue*) ; 
 TYPE_7__* FUNC7 (struct nvmet_tcp_queue*) ; 
 int FUNC8 (struct nvmet_tcp_queue*) ; 
 int FUNC9 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvmet_tcp_queue*,TYPE_7__*,struct nvmet_req*) ; 
 scalar_t__ FUNC11 (TYPE_7__*) ; 
 int FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 scalar_t__ FUNC14 (TYPE_7__*) ; 
 int /*<<< orphan*/  nvmet_tcp_ops ; 
 int /*<<< orphan*/  FUNC15 (struct nvmet_req*) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct nvmet_tcp_queue *queue)
{
	struct nvme_tcp_hdr *hdr = &queue->pdu.cmd.hdr;
	struct nvme_command *nvme_cmd = &queue->pdu.cmd.cmd;
	struct nvmet_req *req;
	int ret;

	if (FUNC17(queue->state == NVMET_TCP_Q_CONNECTING)) {
		if (hdr->type != nvme_tcp_icreq) {
			FUNC16("unexpected pdu type (%d) before icreq\n",
				hdr->type);
			FUNC6(queue);
			return -EPROTO;
		}
		return FUNC9(queue);
	}

	if (hdr->type == nvme_tcp_h2c_data) {
		ret = FUNC8(queue);
		if (FUNC17(ret))
			return ret;
		return 0;
	}

	queue->cmd = FUNC7(queue);
	if (FUNC17(!queue->cmd)) {
		/* This should never happen */
		FUNC16("queue %d: out of commands (%d) send_list_len: %d, opcode: %d",
			queue->idx, queue->nr_cmds, queue->send_list_len,
			nvme_cmd->common.opcode);
		FUNC6(queue);
		return -ENOMEM;
	}

	req = &queue->cmd->req;
	FUNC1(req->cmd, nvme_cmd, sizeof(*nvme_cmd));

	if (FUNC17(!FUNC5(req, &queue->nvme_cq,
			&queue->nvme_sq, &nvmet_tcp_ops))) {
		FUNC16("failed cmd %p id %d opcode %d, data_len: %d\n",
			req->cmd, req->cmd->common.command_id,
			req->cmd->common.opcode,
			FUNC0(req->cmd->common.dptr.sgl.length));

		FUNC10(queue, queue->cmd, req);
		return -EAGAIN;
	}

	ret = FUNC12(queue->cmd);
	if (FUNC17(ret)) {
		FUNC16("queue %d: failed to map data\n", queue->idx);
		if (FUNC11(queue->cmd))
			FUNC6(queue);
		else
			FUNC3(req, ret);
		ret = -EAGAIN;
		goto out;
	}

	if (FUNC14(queue->cmd)) {
		if (FUNC11(queue->cmd)) {
			queue->rcv_state = NVMET_TCP_RECV_DATA;
			FUNC13(queue->cmd);
			return 0;
		}
		/* send back R2T */
		FUNC15(&queue->cmd->req);
		goto out;
	}

	FUNC4(&queue->cmd->req);
out:
	FUNC2(queue);
	return ret;
}