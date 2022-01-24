#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nvmet_tcp_queue {int /*<<< orphan*/  rcv_state; int /*<<< orphan*/  idx; } ;
struct TYPE_8__ {TYPE_1__* port; int /*<<< orphan*/  cmd; } ;
struct nvmet_tcp_cmd {int /*<<< orphan*/  flags; TYPE_2__ req; } ;
struct nvmet_req {scalar_t__ data_len; TYPE_6__* cmd; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; } ;
struct TYPE_11__ {TYPE_3__ sgl; } ;
struct TYPE_10__ {TYPE_5__ dptr; } ;
struct TYPE_12__ {TYPE_4__ common; } ;
struct TYPE_7__ {scalar_t__ inline_data_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVMET_TCP_F_INIT_FAILED ; 
 int /*<<< orphan*/  NVMET_TCP_RECV_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_tcp_queue*) ; 
 int FUNC4 (struct nvmet_tcp_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_tcp_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct nvmet_tcp_queue *queue,
		struct nvmet_tcp_cmd *cmd, struct nvmet_req *req)
{
	int ret;

	/* recover the expected data transfer length */
	req->data_len = FUNC0(req->cmd->common.dptr.sgl.length);

	if (!FUNC1(cmd->req.cmd) ||
	    req->data_len > cmd->req.port->inline_data_size) {
		FUNC2(queue);
		return;
	}

	ret = FUNC4(cmd);
	if (FUNC7(ret)) {
		FUNC6("queue %d: failed to map data\n", queue->idx);
		FUNC3(queue);
		return;
	}

	queue->rcv_state = NVMET_TCP_RECV_DATA;
	FUNC5(cmd);
	cmd->flags |= NVMET_TCP_F_INIT_FAILED;
}