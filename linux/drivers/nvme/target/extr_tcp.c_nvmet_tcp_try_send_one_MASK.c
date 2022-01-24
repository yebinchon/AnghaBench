#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvmet_tcp_queue {scalar_t__ state; struct nvmet_tcp_cmd* snd_cmd; } ;
struct nvmet_tcp_cmd {scalar_t__ state; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ NVMET_TCP_Q_DISCONNECTING ; 
 scalar_t__ NVMET_TCP_SEND_DATA ; 
 scalar_t__ NVMET_TCP_SEND_DATA_PDU ; 
 scalar_t__ NVMET_TCP_SEND_DDGST ; 
 scalar_t__ NVMET_TCP_SEND_R2T ; 
 scalar_t__ NVMET_TCP_SEND_RESPONSE ; 
 struct nvmet_tcp_cmd* FUNC0 (struct nvmet_tcp_queue*) ; 
 int FUNC1 (struct nvmet_tcp_cmd*) ; 
 int FUNC2 (struct nvmet_tcp_cmd*) ; 
 int FUNC3 (struct nvmet_tcp_cmd*) ; 
 int FUNC4 (struct nvmet_tcp_cmd*,int) ; 
 int FUNC5 (struct nvmet_tcp_cmd*,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct nvmet_tcp_queue *queue,
		bool last_in_batch)
{
	struct nvmet_tcp_cmd *cmd = queue->snd_cmd;
	int ret = 0;

	if (!cmd || queue->state == NVMET_TCP_Q_DISCONNECTING) {
		cmd = FUNC0(queue);
		if (FUNC6(!cmd))
			return 0;
	}

	if (cmd->state == NVMET_TCP_SEND_DATA_PDU) {
		ret = FUNC2(cmd);
		if (ret <= 0)
			goto done_send;
	}

	if (cmd->state == NVMET_TCP_SEND_DATA) {
		ret = FUNC1(cmd);
		if (ret <= 0)
			goto done_send;
	}

	if (cmd->state == NVMET_TCP_SEND_DDGST) {
		ret = FUNC3(cmd);
		if (ret <= 0)
			goto done_send;
	}

	if (cmd->state == NVMET_TCP_SEND_R2T) {
		ret = FUNC4(cmd, last_in_batch);
		if (ret <= 0)
			goto done_send;
	}

	if (cmd->state == NVMET_TCP_SEND_RESPONSE)
		ret = FUNC5(cmd, last_in_batch);

done_send:
	if (ret < 0) {
		if (ret == -EAGAIN)
			return 0;
		return ret;
	}

	return 1;
}