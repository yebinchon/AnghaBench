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
struct TYPE_4__ {int /*<<< orphan*/  done; } ;
struct smbd_request {int num_sge; int has_payload; TYPE_2__* sge; TYPE_1__ cqe; } ;
struct smbd_connection {int keep_alive_interval; int /*<<< orphan*/  idle_timer_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  wait_send_pending; int /*<<< orphan*/  send_pending; int /*<<< orphan*/  wait_send_payload_pending; int /*<<< orphan*/  send_payload_pending; TYPE_3__* id; } ;
struct ib_send_wr {int num_sge; int /*<<< orphan*/  send_flags; int /*<<< orphan*/  opcode; TYPE_2__* sg_list; TYPE_1__* wr_cqe; int /*<<< orphan*/ * next; } ;
struct TYPE_6__ {int /*<<< orphan*/  qp; int /*<<< orphan*/  device; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int /*<<< orphan*/  ERR ; 
 int HZ ; 
 int /*<<< orphan*/  IB_SEND_SIGNALED ; 
 int /*<<< orphan*/  IB_WR_SEND ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ib_send_wr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  send_done ; 
 int /*<<< orphan*/  FUNC6 (struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct smbd_connection *info,
		struct smbd_request *request, bool has_payload)
{
	struct ib_send_wr send_wr;
	int rc, i;

	for (i = 0; i < request->num_sge; i++) {
		FUNC4(INFO,
			"rdma_request sge[%d] addr=%llu length=%u\n",
			i, request->sge[i].addr, request->sge[i].length);
		FUNC2(
			info->id->device,
			request->sge[i].addr,
			request->sge[i].length,
			DMA_TO_DEVICE);
	}

	request->cqe.done = send_done;

	send_wr.next = NULL;
	send_wr.wr_cqe = &request->cqe;
	send_wr.sg_list = request->sge;
	send_wr.num_sge = request->num_sge;
	send_wr.opcode = IB_WR_SEND;
	send_wr.send_flags = IB_SEND_SIGNALED;

	if (has_payload) {
		request->has_payload = true;
		FUNC1(&info->send_payload_pending);
	} else {
		request->has_payload = false;
		FUNC1(&info->send_pending);
	}

	rc = FUNC3(info->id->qp, &send_wr, NULL);
	if (rc) {
		FUNC4(ERR, "ib_post_send failed rc=%d\n", rc);
		if (has_payload) {
			if (FUNC0(&info->send_payload_pending))
				FUNC7(&info->wait_send_payload_pending);
		} else {
			if (FUNC0(&info->send_pending))
				FUNC7(&info->wait_send_pending);
		}
		FUNC6(info);
		rc = -EAGAIN;
	} else
		/* Reset timer for idle connection after packet is sent */
		FUNC5(info->workqueue, &info->idle_timer_work,
			info->keep_alive_interval*HZ);

	return rc;
}