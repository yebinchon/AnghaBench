#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nvmet_tcp_queue {scalar_t__ data_digest; struct nvmet_tcp_cmd* cmd; } ;
struct TYPE_7__ {scalar_t__ transfer_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  msg_flags; } ;
struct nvmet_tcp_cmd {int pdu_recv; scalar_t__ rbytes_done; int flags; TYPE_3__ req; TYPE_2__ recv_msg; TYPE_1__* queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int NVMET_TCP_F_INIT_FAILED ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_tcp_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmet_tcp_cmd*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nvmet_tcp_queue *queue)
{
	struct nvmet_tcp_cmd  *cmd = queue->cmd;
	int ret;

	while (FUNC0(&cmd->recv_msg)) {
		ret = FUNC5(cmd->queue->sock, &cmd->recv_msg,
			cmd->recv_msg.msg_flags);
		if (ret <= 0)
			return ret;

		cmd->pdu_recv += ret;
		cmd->rbytes_done += ret;
	}

	FUNC4(cmd);

	if (!(cmd->flags & NVMET_TCP_F_INIT_FAILED) &&
	    cmd->rbytes_done == cmd->req.transfer_len) {
		if (queue->data_digest) {
			FUNC3(cmd);
			return 0;
		}
		FUNC2(&cmd->req);
	}

	FUNC1(queue);
	return 0;
}