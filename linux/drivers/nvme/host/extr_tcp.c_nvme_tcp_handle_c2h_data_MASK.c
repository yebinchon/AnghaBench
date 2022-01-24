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
struct request {int /*<<< orphan*/  tag; } ;
struct nvme_tcp_queue {TYPE_2__* ctrl; int /*<<< orphan*/  data_remaining; } ;
struct TYPE_4__ {int flags; } ;
struct nvme_tcp_data_pdu {TYPE_1__ hdr; int /*<<< orphan*/  data_length; int /*<<< orphan*/  command_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_3__ ctrl; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int EPROTO ; 
 int NVME_TCP_F_DATA_LAST ; 
 int NVME_TCP_F_DATA_SUCCESS ; 
 struct request* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_tcp_queue*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct nvme_tcp_queue *queue,
		struct nvme_tcp_data_pdu *pdu)
{
	struct request *rq;

	rq = FUNC0(FUNC6(queue), pdu->command_id);
	if (!rq) {
		FUNC2(queue->ctrl->ctrl.device,
			"queue %d tag %#x not found\n",
			FUNC5(queue), pdu->command_id);
		return -ENOENT;
	}

	if (!FUNC1(rq)) {
		FUNC2(queue->ctrl->ctrl.device,
			"queue %d tag %#x unexpected data\n",
			FUNC5(queue), rq->tag);
		return -EIO;
	}

	queue->data_remaining = FUNC3(pdu->data_length);

	if (pdu->hdr.flags & NVME_TCP_F_DATA_SUCCESS &&
	    FUNC7(!(pdu->hdr.flags & NVME_TCP_F_DATA_LAST))) {
		FUNC2(queue->ctrl->ctrl.device,
			"queue %d tag %#x SUCCESS set but not last PDU\n",
			FUNC5(queue), rq->tag);
		FUNC4(&queue->ctrl->ctrl);
		return -EPROTO;
	}

	return 0;
}