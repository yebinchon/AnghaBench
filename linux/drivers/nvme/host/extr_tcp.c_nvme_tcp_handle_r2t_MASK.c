#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct nvme_tcp_request {scalar_t__ offset; int /*<<< orphan*/  state; } ;
struct nvme_tcp_r2t_pdu {int /*<<< orphan*/  command_id; } ;
struct nvme_tcp_queue {TYPE_2__* ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  NVME_TCP_SEND_H2C_PDU ; 
 struct nvme_tcp_request* FUNC0 (struct request*) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_tcp_request*) ; 
 int FUNC5 (struct nvme_tcp_request*,struct nvme_tcp_r2t_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_tcp_queue*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct nvme_tcp_queue *queue,
		struct nvme_tcp_r2t_pdu *pdu)
{
	struct nvme_tcp_request *req;
	struct request *rq;
	int ret;

	rq = FUNC1(FUNC6(queue), pdu->command_id);
	if (!rq) {
		FUNC2(queue->ctrl->ctrl.device,
			"queue %d tag %#x not found\n",
			FUNC3(queue), pdu->command_id);
		return -ENOENT;
	}
	req = FUNC0(rq);

	ret = FUNC5(req, pdu);
	if (FUNC7(ret))
		return ret;

	req->state = NVME_TCP_SEND_H2C_PDU;
	req->offset = 0;

	FUNC4(req);

	return 0;
}