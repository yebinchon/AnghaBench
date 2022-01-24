#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ sqhd_disabled; } ;
struct nvmet_tcp_queue {int /*<<< orphan*/ * snd_cmd; TYPE_1__ nvme_sq; int /*<<< orphan*/  sock; } ;
struct nvmet_tcp_cmd {int offset; struct nvmet_tcp_queue* queue; int /*<<< orphan*/  exp_ddgst; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; } ;
struct kvec {int iov_len; int /*<<< orphan*/ * iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int NVME_TCP_DIGEST_LENGTH ; 
 int FUNC0 (int /*<<< orphan*/ ,struct msghdr*,struct kvec*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_tcp_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_tcp_cmd*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct nvmet_tcp_cmd *cmd)
{
	struct nvmet_tcp_queue *queue = cmd->queue;
	struct msghdr msg = { .msg_flags = MSG_DONTWAIT };
	struct kvec iov = {
		.iov_base = &cmd->exp_ddgst + cmd->offset,
		.iov_len = NVME_TCP_DIGEST_LENGTH - cmd->offset
	};
	int ret;

	ret = FUNC0(queue->sock, &msg, &iov, 1, iov.iov_len);
	if (FUNC3(ret <= 0))
		return ret;

	cmd->offset += ret;

	if (queue->nvme_sq.sqhd_disabled) {
		cmd->queue->snd_cmd = NULL;
		FUNC2(cmd);
	} else {
		FUNC1(cmd);
	}
	return 1;
}